
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Example {char* member_0; char* member_1; } ;



__attribute__((used)) static struct Example* Iter_Examples(void) {

  static struct Example examples[] = {
    {
      "Usage",
      "var x = new(Array, Int, $I(1), $I(2), $I(5));\n"
      "\n"
      "foreach(o in x) {\n"
      "  show(o); /* 1, 2, 5 */\n"
      "}\n"
    }, {
      "Table",
      "var prices = new(Table, String, Int);\n"
      "set(prices, $S(\"Apple\"),  $I(12));\n"
      "set(prices, $S(\"Banana\"), $I( 6));\n"
      "set(prices, $S(\"Pear\"),   $I(55));\n"
      "\n"
      "foreach(key in prices) {\n"
      "  var price = get(prices, key);\n"
      "  print(\"Price of %$ is %$\\n\", key, price);\n"
      "}\n"
    }, {((void*)0), ((void*)0)}
  };

  return examples;

}
