
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Example {char* member_0; char* member_1; } ;



__attribute__((used)) static struct Example* Stream_Examples(void) {

  static struct Example examples[] = {
    {
      "Usage",
      "var f = sopen($(File, NULL), $S(\"test.bin\"), $S(\"r\"));\n"
      "\n"
      "char c;\n"
      "while (!seof(f)) {\n"
      "  sread(f, &c, 1);\n"
      "  putc(c, stdout);\n"
      "}\n"
      "\n"
      "sclose(f);\n"
    }, {((void*)0), ((void*)0)}
  };

  return examples;

}
