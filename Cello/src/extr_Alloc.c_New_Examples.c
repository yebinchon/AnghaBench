
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Example {char* member_0; char* member_1; } ;



__attribute__((used)) static struct Example* New_Examples(void) {

  static struct Example examples[] = {
    {
      "Usage",
      "var x = new(Int, $I(1));\n"
      "show(x); /* 1 */\n"
      "show(type_of(x)); /* Int */\n"
      "\n"
      "var y = alloc(Float);\n"
      "construct(y, $F(1.0));\n"
      "show(y); /* 1.0 */\n"
      "destruct(y);\n"
    }, {((void*)0), ((void*)0)}
  };

  return examples;
}
