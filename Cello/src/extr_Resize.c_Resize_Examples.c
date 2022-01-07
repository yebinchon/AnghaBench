
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Example {char* member_0; char* member_1; } ;



__attribute__((used)) static struct Example* Resize_Examples(void) {

  static struct Example examples[] = {
    {
      "Usage",
      "var x = new(Array, Int);\n"
      "resize(x, 10000); /* Reserve space in Array */ \n"
      "for (size_t i = 0; i < 10000; i++) {\n"
      "  push(x, $I(i));\n"
      "}\n"
    }, {
      "Usage 2",
      "var x = new(Array, Int, $I(0), $I(1), $I(2));\n"
      "resize(x, 0); /* Clear Array of items */\n"
    }, {((void*)0), ((void*)0)}
  };

  return examples;

}
