
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Example {char* member_0; char* member_1; } ;



__attribute__((used)) static struct Example* Slice_Examples(void) {

  static struct Example examples[] = {
    {
      "Usage",
      "var x = tuple(\n"
      "  $S(\"Hello\"), $S(\"There\"), $S(\"World\"), $S(\"!\"));\n"
      "\n"
      "/* Iterate over elements 0 to 2 */\n"
      "foreach (s in slice(x, $I(2))) {\n"
      "  print(\"%s\\n\", s);\n"
      "}\n"
      "\n"
      "/* Iterate over elements 1 to 2 */\n"
      "foreach (s in slice(x, $I(1), $I(2))) {\n"
      "  print(\"%s\\n\", s);\n"
      "}\n"
      "\n"
      "/* Iterate over every other element */\n"
      "foreach (s in slice(x, _, _, $I(2))) {\n"
      "  print(\"%s\\n\", s);\n"
      "}\n"
      "\n"
      "/* Iterate backwards, starting from element 3 */\n"
      "foreach (s in slice(x, _, $I(2), $I(-1))) {\n"
      "  print(\"%s\\n\", s);\n"
      "}\n"
    }, {((void*)0), ((void*)0)}
  };

  return examples;

}
