
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Example {char* member_0; char* member_1; } ;



__attribute__((used)) static struct Example* String_Examples(void) {

  static struct Example examples[] = {
    {
      "Usage",
      "var s0 = $(String, \"Hello\");\n"
      "var s1 = new(String, $S(\"Hello\"));\n"
      "append(s1, $S(\" There\"));\n"
      "show(s0); /* Hello */\n"
      "show(s1); /* Hello There */\n"
    }, {
      "Manipulation",
      "var s0 = new(String, $S(\"Balloons\"));\n"
      "\n"
      "show($I(len(s0))); /* 8 */\n"
      "show($I(mem(s0, $S(\"Ball\"))));     /* 1 */\n"
      "show($I(mem(s0, $S(\"oon\"))));      /* 1 */\n"
      "show($I(mem(s0, $S(\"Balloons\")))); /* 1 */\n"
      "show($I(mem(s0, $S(\"l\"))));        /* 1 */\n"
      "\n"
      "rem(s0, $S(\"oons\"));\n"
      "\n"
      "show($I(eq(s0, $S(\"Ball\")))); /* 1 */\n"
      "\n"
      "resize(s0, 0);\n"
      "\n"
      "show($I(len(s0))); /* 0 */\n"
      "show($I(eq(s0, $S(\"\")))); /* 1 */\n"
    }, {((void*)0), ((void*)0)}
  };

  return examples;

}
