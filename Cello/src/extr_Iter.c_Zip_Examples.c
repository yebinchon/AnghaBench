
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Example {char* member_0; char* member_1; } ;



__attribute__((used)) static struct Example* Zip_Examples(void) {

  static struct Example examples[] = {
    {
      "Usage",
      "/* Iterate over two iterables at once */\n"
      "var x = new(Array, Int, $I(100), $I(200), $I(130));\n"
      "var y = new(Array, Float, $F(0.1), $F(0.2), $F(1.3));\n"
      "foreach (pair in zip(x, y)) {\n"
      "  print(\"x: %$\\n\", get(pair, $I(0)));\n"
      "  print(\"y: %$\\n\", get(pair, $I(1)));\n"
      "}\n"
      "\n"
      "/* Iterate over iterable with count */\n"
      "foreach (pair in enumerate(x)) {\n"
      "  print(\"%i: %$\\n\", get(pair, $I(0)), get(pair, $I(1)));\n"
      "}\n"
    }, {((void*)0), ((void*)0)}
  };

  return examples;

}
