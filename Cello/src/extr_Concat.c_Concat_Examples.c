
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Example {char* member_0; char* member_1; } ;



__attribute__((used)) static struct Example* Concat_Examples(void) {

  static struct Example examples[] = {
    {
      "Usage",
      "var x = new(Array, Float, $F(9.9), $F(2.8));\n"
      "var y = new(Array, Float, $F(1.1), $F(6.5));\n"
      "\n"
      "show(x); /* <'Array' At 0x00414603 [9.9, 2.8]> */\n"
      "show(y); /* <'Array' At 0x00414603 [1.1, 6.5]> */\n"
      "append(x, $F(2.5));\n"
      "show(x); /* <'Array' At 0x00414603 [9.9, 2.8, 2.5]> */\n"
      "concat(x, y);\n"
      "show(x); /* <'Array' At 0x00414603 [9.9, 2.8, 2.5, 1.1, 6.5]> */\n"
    }, {((void*)0), ((void*)0)}
  };

  return examples;

}
