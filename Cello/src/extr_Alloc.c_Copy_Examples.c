
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Example {char* member_0; char* member_1; } ;



__attribute__((used)) static struct Example* Copy_Examples(void) {

  static struct Example examples[] = {
    {
      "Usage",
      "var x = new(String, $S(\"Hello\"));\n"
      "var y = copy(x);\n"
      "show(x); /* Hello */\n"
      "show(y); /* Hello */\n"
      "show($I(eq(x, y))); /* 1 */\n"
      "show($I(x is y)); /* 0 */\n"
    }, {((void*)0), ((void*)0)}
  };

  return examples;
}
