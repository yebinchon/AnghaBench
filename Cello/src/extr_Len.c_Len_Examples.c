
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Example {char* member_0; char* member_1; } ;



__attribute__((used)) static struct Example* Len_Examples(void) {

  static struct Example examples[] = {
    {
      "Usage",
      "var x = new(Array, Int, $I(1), $I(2), $I(5));\n"
      "show($I(len(x))); /* 3 */\n"
      "var y = $S(\"Test\");\n"
      "show($I(len(y))); /* 4 */\n"
    }, {((void*)0), ((void*)0)}
  };

  return examples;

}
