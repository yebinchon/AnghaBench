
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Example {char* member_0; char* member_1; } ;



__attribute__((used)) static struct Example* Sort_Examples(void) {

  static struct Example examples[] = {
    {
      "Usage",
      "var x = new(Array, Float, \n"
      "  $F(5.2), $F(7.1), $F(2.2));\n"
      "\n"
      "show(x); /* <'Array' At 0x00414603 [5.2, 7.1, 2.2]> */\n"
      "sort(x);\n"
      "show(x); /* <'Array' At 0x00414603 [2.2, 5.2, 7.1]> */\n"
    }, {((void*)0), ((void*)0)}
  };

  return examples;
}
