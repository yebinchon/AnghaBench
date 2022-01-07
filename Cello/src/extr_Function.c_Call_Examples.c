
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Example {char* member_0; char* member_1; } ;



__attribute__((used)) static struct Example* Call_Examples(void) {

  static struct Example examples[] = {
    {
      "Usage",
      "var increment(var args) {\n"
      "  struct Int* i = get(args, $I(0));\n"
      "  i->val++;\n"
      "  return NULL;\n"
      "}\n"
      "\n"
      "var x = $I(0);\n"
      "show(x); /* 0 */\n"
      "call($(Function, increment), x);\n"
      "show(x); /* 1 */\n"
    }, {((void*)0), ((void*)0)}
  };

  return examples;

}
