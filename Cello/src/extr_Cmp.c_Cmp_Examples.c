
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Example {char* member_0; char* member_1; } ;



__attribute__((used)) static struct Example* Cmp_Examples(void) {

  static struct Example examples[] = {
    {
      "Usage 1",
      "show($I( eq($I(1), $I( 1)))); /* 1 */\n"
      "show($I(neq($I(2), $I(20)))); /* 1 */\n"
      "show($I(neq($S(\"Hello\"), $S(\"Hello\")))); /* 0 */\n"
      "show($I( eq($S(\"Hello\"), $S(\"There\")))); /* 0 */\n"
      "\n"
      "var a = $I(1); var b = $I(1);\n"
      "\n"
      "show($I(eq(a, b))); /* 1 */\n"
      "show($I(a is b));   /* 0 */\n"
      "show($I(a isnt b)); /* 1 */\n"
    }, {
      "Usage 2",
      "show($I(gt($I(15), $I(3 )))); /* 1 */\n"
      "show($I(lt($I(70), $I(81)))); /* 1 */\n"
      "show($I(lt($I(71), $I(71)))); /* 0 */\n"
      "show($I(ge($I(78), $I(71)))); /* 1 */\n"
      "show($I(gt($I(32), $I(32)))); /* 0 */\n"
      "show($I(le($I(21), $I(32)))); /* 1 */\n"
      "\n"
      "show($I(cmp($I(20), $I(20)))); /*  0 */\n"
      "show($I(cmp($I(21), $I(20)))); /*  1 */\n"
      "show($I(cmp($I(20), $I(21)))); /* -1 */\n"
    }, {((void*)0), ((void*)0)}
  };

  return examples;
}
