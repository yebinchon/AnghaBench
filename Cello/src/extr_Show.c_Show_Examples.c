
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Example {char* member_0; char* member_1; } ;



__attribute__((used)) static struct Example* Show_Examples(void) {

  static struct Example examples[] = {
    {
      "Hello World",
      "println(\"Hello %s!\", $S(\"World\"));\n"
    }, {
      "File Writing",
      "with (f in new(File, $S(\"prices.txt\"), $S(\"wb\"))) {\n"
      "  print_to(f, 0, \"%$ :: %$\\n\", $S(\"Banana\"), $I(57));\n"
      "  print_to(f, 0, \"%$ :: %$\\n\", $S(\"Apple\"),  $I(22));\n"
      "  print_to(f, 0, \"%$ :: %$\\n\", $S(\"Pear\"),   $I(16));\n"
      "}\n"
    }, {
      "String Scanning",
      "var input = $S(\"1 and 52 then 78\");\n"
      "\n"
      "var i0 = $I(0), i1 = $I(0), i2 = $I(0);\n"
      "scan_from(input, 0, \"%i and %i then %i\", i0, i1, i2);\n"
      "\n"
      "/* i0: 1, i1: 52, i2: 78 */\n"
      "println(\"i0: %$, i1: %$, i2: %$\", i0, i1, i2);\n"
    }, {
      "String Printing",
      "var greeting = new(String);\n"
      "print_to(greeting, 0, \"Hello %s %s, %s?\", \n"
      "  $S(\"Mr\"), $S(\"Johnson\"), $S(\"how are you?\"));\n"
      "\n"
      "/* Hello Mr Johnson, how are you? */\n"
      "show(greeting);\n"
    }, {((void*)0), ((void*)0)}
  };

  return examples;

}
