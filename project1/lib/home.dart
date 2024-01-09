import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);
 @override
  State<Homepage> createState() => _HomepageState();
}
class _HomepageState extends State<Homepage> {
  int index = 0;
void _quotes() {
    setState(() {
      index++;
    });
  }
 List questions = [
    'SUCCESS IS NOT FINAL; FAILURE IS NOT FATAL: IT IS THE COURAGE TO CONTINUE THAT COUNT',
    'IT IS BETTER TO FAIL IN ORIGINALITY THAN TO SUCCEED IN IMITATION',
    'THE ROAD TO SUCCESS AND THE ROAD TO FAILURE ARE ALMOST EXACTLY THE SAME',
    'SUCCESS USUALLY COMES TO THOSE WHO ARE TOO BUSY LOOKING FOR IT',
    'SUCCESS IS NOT FINAL; FAILURE IS NOT FATAL: IT IS THE COURAGE TO CONTINUE THAT COUNTS',
    'IT IS BETTER TO FAIL IN ORIGINALITY THAN TO SUCCEED IN IMITATION ',
    'THE ROAD TO SUCCESS AND THE ROAD TO FAILURE ARE ALMOST EXACTLY THE SAME ',
    'SUCCESS USUALLY COMES TO THOSE WHO ARE TOO BUSY LOOKING FOR IT',
    'I NEVER DREAMED ABOUT SUCCESS. I WORKED FOR IT',
    'SUCCESS IS GETTING WHAT YOU WANT, HAPPINESS IS WANTING WHAT YOU GET',
    'I NEVER DREAMED ABOUT SUCCESS. I WORKED FOR IT ',
    'SUCCESS IS GETTING WHAT YOU WANT, HAPPINESS IS WANTING WHAT YOU GET',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        centerTitle: true,
        title: Text(
          "QuoteApp",
          style: GoogleFonts.acme(fontSize: 30, fontWeight: FontWeight.w600),
        ),
      ),
      backgroundColor: Colors.white,
      body: Container(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
            padding: const EdgeInsets.only(left: 1, right: 1),
            child: Image.network(
              "https://mir-s3-cdn-cf.behance.net/project_modules/fs/54dcd9161674409.63c90e6c33539.jpg",
              height: 350,
            ),
          ),
          const SizedBox(height: 20),
          Container(
              width: 500,
              margin: const EdgeInsets.all(30.0),
              child: Text(
                questions[index % questions.length],
                style: GoogleFonts.adamina(
                    fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              )),
          ElevatedButton.icon(
            onPressed: _quotes,
            icon: const Icon(Icons.touch_app_rounded),
            label: const Text("TAP ME"),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                  Color.fromARGB(255, 133, 14, 207)),
            ),
          ),
        ]),
      ),
    );
  }
}
