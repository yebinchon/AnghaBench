
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Example {char* member_0; char* member_1; } ;



__attribute__((used)) static struct Example* Float_Examples(void) {

  static struct Example examples[] = {
    {
      "Usage",
      "var f0 = $(Float, 1.0);\n"
      "var f1 = new(Float, $F(24.313));\n"
      "var f2 = copy(f0);\n"
      "\n"
      "show(f0); /*  1.000 */\n"
      "show(f1); /* 24.313 */\n"
      "show(f2); /*  1.000 */\n"
    }, {((void*)0), ((void*)0)}
  };

  return examples;

}
