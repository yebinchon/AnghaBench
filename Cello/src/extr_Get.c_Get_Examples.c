
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Example {char* member_0; char* member_1; } ;



__attribute__((used)) static struct Example* Get_Examples(void) {

  static struct Example examples[] = {
    {
      "Usage 1",
      "var x = new(Array, String, \n"
      "  $S(\"Hello\"), $S(\"There\"));\n"
      "\n"
      "show(get(x, $I(0))); /* Hello */\n"
      "show(get(x, $I(1))); /* There */\n"
      "set(x, $I(1), $S(\"Blah\"));\n"
      "show(get(x, $I(1))); /* Blah */\n"
    }, {
      "Usage 2",
      "var prices = new(Table, String, Int, \n"
      "  $S(\"Apple\"),  $I(12),\n"
      "  $S(\"Banana\"), $I( 6),\n"
      "  $S(\"Pear\"),   $I(55));\n"
      "\n"
      "var pear_price   = get(prices, $S(\"Pear\"));\n"
      "var banana_price = get(prices, $S(\"Banana\"));\n"
      "var apple_price  = get(prices, $S(\"Apple\"));\n"
      "\n"
      "show(pear_price);   /* 55 */\n"
      "show(banana_price); /*  6 */\n"
      "show(apple_price);  /* 12 */\n"
    }, {((void*)0), ((void*)0)}
  };

  return examples;

}
