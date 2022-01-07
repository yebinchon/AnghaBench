
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Example {char* member_0; char* member_1; } ;



__attribute__((used)) static struct Example* C_Int_Examples(void) {

  static struct Example examples[] = {
    {
      "Usage",
      "printf(\"%li\", c_int($I(5))); /* 5 */\n"
      "printf(\"%li\", c_int($I(6))); /* 6 */\n"
    }, {((void*)0), ((void*)0)}
  };

  return examples;

}
