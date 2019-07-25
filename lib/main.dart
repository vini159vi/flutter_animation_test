import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _anim = "Standart";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: GestureDetector(
        onTap: () {},
        child: Stack(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: double.infinity,
              child: FlareActor(
                "animations/splash.flr",
                animation: _anim,
                fit: BoxFit.cover,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(16),
                  child: TextField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.person, color: Colors.white,),
                      hintText: "Digite seu nome aqui",
                      hintStyle: TextStyle(color: Colors.white),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          borderSide: BorderSide(color: Colors.white)),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(16),
                  child: TextField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.lock, color: Colors.white,),
                      hintText: "Senha",
                      hintStyle: TextStyle(color: Colors.white),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          borderSide: BorderSide(color: Colors.white)),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(16),
                  child: RaisedButton(
                    shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                        side: BorderSide(color: Colors.white)),
                    textColor: Colors.white,
                    onPressed: () {},
                    child: Text("Entrar"),
                  ),
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
