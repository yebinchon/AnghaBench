
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Example {char* member_0; char* member_1; } ;



__attribute__((used)) static struct Example* Int_Examples(void) {

  static struct Example examples[] = {
    {
      "Usage",
      "var i0 = $(Int, 1);\n"
      "var i1 = new(Int, $I(24313));\n"
      "var i2 = copy(i0);\n"
      "\n"
      "show(i0); /*     1 */\n"
      "show(i1); /* 24313 */\n"
      "show(i2); /*     1 */\n"
    }, {((void*)0), ((void*)0)}
  };

  return examples;

}
