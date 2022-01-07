
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Example {char* member_0; char* member_1; } ;



__attribute__((used)) static struct Example* C_Float_Examples(void) {

  static struct Example examples[] = {
    {
      "Usage",
      "printf(\"%f\", c_float($F(5.1))); /* 5.1 */\n"
      "printf(\"%f\", c_float($F(6.2))); /* 6.2 */\n"
    }, {((void*)0), ((void*)0)}
  };

  return examples;

}
