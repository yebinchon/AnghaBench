
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Example {char* member_0; char* member_1; } ;



__attribute__((used)) static struct Example* Process_Examples(void) {

  static struct Example examples[] = {
    {
      "Usage",
      "var x = new(Process, $S(\"ls\"), $S(\"r\"));\n"
      "char c;\n"
      "while (not seof(x)) {\n"
      "  sread(x, &c, 1);\n"
      "  print(\"%c\", $I(c));\n"
      "}\n"
      "sclose(x);\n"
    }, {((void*)0), ((void*)0)}
  };

  return examples;

}
