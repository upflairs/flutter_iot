import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IoT App',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyIoTPage(title: 'IoT Panel'),
    );
  }
}

class MyIoTPage extends StatefulWidget {
  MyIoTPage({this.title: ''});
  final String title;
  @override
  _MyIoTPageState createState() => _MyIoTPageState();
}

class _MyIoTPageState extends State<MyIoTPage> {
  String text = 'Some Text';
  void onPressed() {
    print('Clicked');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text),
            ElevatedButton(
              onPressed: onPressed,
              child: Text('Click Me'),
            ),
          ],
        ),
      ),
    );
  }
}
