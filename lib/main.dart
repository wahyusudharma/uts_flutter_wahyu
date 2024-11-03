import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Biodata',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const BioPage(),
    );
  }
}

class BioPage extends StatelessWidget {
  const BioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Biodata', style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue[900],
      ),
      body: SingleChildScrollView( // Make the content scrollable
        child: Center(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 1600),
            margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            padding: const EdgeInsets.all(30),
            decoration: BoxDecoration(
              color: Colors.blue[900],
              borderRadius: BorderRadius.circular(8),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 10,
                  offset: Offset(0, 5),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('assets/images/foto.jpeg'),
                  backgroundColor: Colors.white,
                ),
                const SizedBox(height: 30),
                const Text('Made Wahyu Sudharma', style: TextStyle( fontSize: 26, fontWeight: FontWeight.bold, color: Colors.white,),),
                const SizedBox(height: 10),
                const Text('42230049', style: TextStyle( fontSize: 18, color: Colors.white70,),),
                const SizedBox(height: 16),
                Container( width: 100, height: 2, color: Colors.white, ),
                const SizedBox(height: 16),
                const BioDetail(
                  label: 'ABOUT', 
                  text: 'Nama saya Made Wahyu Sudharma, lahir pada tanggal 24 mei 2004 di singaraja, Bali. Saya adalah anak kedua dari tiga bersaudara. Saat ini saya berkesempatan menempuh pendidikan sarjana di Universitas Pendidikan Nasional, dengan prodi Teknologi Informasi.',),
                const BioDetail(
                  label: 'HOBBY', 
                  text: 'Bermain badminton \nBermain Futsal',),
                const BioDetail(
                  label: 'KEMAMPUAN',
                  text: 'Desain grafis',),
                const BioDetail(
                  label: 'CONTACT INFORMATION',
                  text: 'Phone: +6281339467227 \nEmail: wahyusudharma16@gmail.com',),
                const SizedBox(height: 16),
                Container(width: 100, height: 2, color: Colors.white,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BioDetail extends StatelessWidget {
  final String label;
  final String text;

  const BioDetail({
    super.key,
    required this.label,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        width: double.infinity, // Makes the container take full width
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Aligns text to the start
          children: [
            Text(
              label,
              style: const TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              text,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
              softWrap: true, // Enables text wrapping
              overflow: TextOverflow.clip, // Prevents overflow beyond container
            ),
          ],
        ),
      ),
    );
  }
}