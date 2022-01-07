
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Example {char* member_0; char* member_1; } ;



__attribute__((used)) static struct Example* Push_Examples(void) {

  static struct Example examples[] = {
    {
      "Usage",
      "var x = new(Array, Int);\n"
      "\n"
      "push(x, $I( 0));\n"
      "push(x, $I( 5));\n"
      "push(x, $I(10));\n"
      "\n"
      "show(get(x, $I(0))); /*  0 */\n"
      "show(get(x, $I(1))); /*  5 */\n"
      "show(get(x, $I(2))); /* 10 */\n"
      "\n"
      "pop_at(x, $I(1));\n"
      "\n"
      "show(get(x, $I(0))); /*  0 */\n"
      "show(get(x, $I(1))); /* 10 */\n"
    }, {((void*)0), ((void*)0)}
  };

  return examples;

}
