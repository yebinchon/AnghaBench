
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Example {char* member_0; char* member_1; } ;



__attribute__((used)) static struct Example* Tuple_Examples(void) {

  static struct Example examples[] = {
    {
      "Usage",
      "var x = tuple($I(100), $I(200), $S(\"Hello\"));\n"
      "show(x);\n"
      "var y = tuple(Int, $I(10), $I(20));\n"
      "var z = new_with(Array, y);\n"
      "show(z);\n"
      "\n"
      "foreach (item in x) {\n"
      "  println(\"%$\", item);\n"
      "}\n"
    }, {((void*)0), ((void*)0)}
  };

  return examples;

}
