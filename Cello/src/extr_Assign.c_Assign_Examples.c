
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Example {char* member_0; char* member_1; } ;



__attribute__((used)) static struct Example* Assign_Examples(void) {

  static struct Example examples[] = {
    {
      "Usage",
      "var x = new(Int, $I(10));\n"
      "var y = new(Int, $I(20));\n"
      "\n"
      "show(x); /* 10 */\n"
      "show(y); /* 20 */\n"
      "\n"
      "assign(x, y);\n"
      "\n"
      "show(x); /* 20 */\n"
      "show(y); /* 20 */\n"
    }, {((void*)0), ((void*)0)}
  };

  return examples;
}
