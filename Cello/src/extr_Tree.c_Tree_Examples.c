
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Example {char* member_0; char* member_1; } ;



__attribute__((used)) static struct Example* Tree_Examples(void) {

  static struct Example examples[] = {
    {
      "Usage",
      "var prices = new(Tree, String, Int);\n"
      "set(prices, $S(\"Apple\"),  $I(12));\n"
      "set(prices, $S(\"Banana\"), $I( 6));\n"
      "set(prices, $S(\"Pear\"),   $I(55));\n"
      "\n"
      "foreach (key in prices) {\n"
      "  var price = get(prices, key);\n"
      "  println(\"Price of %$ is %$\", key, price);\n"
      "}\n"
    }, {
      "Manipulation",
      "var t = new(Tree, String, Int);\n"
      "set(t, $S(\"Hello\"), $I(2));\n"
      "set(t, $S(\"There\"), $I(5));\n"
      "\n"
      "show($I(len(t))); /* 2 */\n"
      "show($I(mem(t, $S(\"Hello\")))); /* 1 */\n"
      "\n"
      "rem(t, $S(\"Hello\"));\n"
      "\n"
      "show($I(len(t))); /* 1 */\n"
      "show($I(mem(t, $S(\"Hello\")))); /* 0 */\n"
      "show($I(mem(t, $S(\"There\")))); /* 1 */\n"
      "\n"
      "resize(t, 0);\n"
      "\n"
      "show($I(len(t))); /* 0 */\n"
      "show($I(mem(t, $S(\"Hello\")))); /* 0 */\n"
      "show($I(mem(t, $S(\"There\")))); /* 0 */\n"
    }, {((void*)0), ((void*)0)}
  };

  return examples;

}
