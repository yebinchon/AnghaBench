
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Example {char* member_0; char* member_1; } ;



__attribute__((used)) static struct Example* File_Examples(void) {

  static struct Example examples[] = {
    {
      "Usage",
      "var x = new(File, $S(\"test.bin\"), $S(\"wb\"));\n"
      "char* data = \"hello\";\n"
      "swrite(x, data, strlen(data));\n"
      "sclose(x);\n"
    }, {
      "Formatted Printing",
      "var x = $(File, NULL);\n"
      "sopen(x, $S(\"test.txt\"), $S(\"w\"));\n"
      "print_to(x, 0, \"%$ is %$ \", $S(\"Dan\"), $I(23));\n"
      "print_to(x, 0, \"%$ is %$ \", $S(\"Chess\"), $I(24));\n"
      "sclose(x);\n"
    }, {
      "Automatic Closing",
      "with(f in new(File, $S(\"test.txt\"), $S(\"r\"))) {\n"
      "  var k = new(String); resize(k, 100);\n"
      "  var v = new(Int, $I(0));\n"
      "  foreach (i in range($I(2))) {\n"
      "    scan_from(f, 0, \"%$ is %$ \", k, v);\n"
      "    show(k); show(v);\n"
      "  }\n"
      "}\n"
    }, {((void*)0), ((void*)0)}
  };

  return examples;

}
