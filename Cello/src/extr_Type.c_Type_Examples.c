
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Example {char* member_0; char* member_1; } ;



__attribute__((used)) static struct Example* Type_Examples(void) {

  static struct Example examples[] = {
    {
      "Usage",
      "var t = type_of($I(5));\n"
      "show(t); /* Int */\n"
      "\n"
      "show($I(type_implements(t, New)));  /* 1 */\n"
      "show($I(type_implements(t, Cmp)));  /* 1 */\n"
      "show($I(type_implements(t, Hash))); /* 1 */\n"
      "\n"
      "show($I(type_method(t, Cmp, cmp, $I(5), $I(6))));\n"
    }, {((void*)0), ((void*)0)}
  };

  return examples;

}
