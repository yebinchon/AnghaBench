
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Example {char* member_0; char* member_1; } ;



__attribute__((used)) static struct Example* Size_Examples(void) {

  static struct Example examples[] = {
    {
      "Usage",
      "show($I(size(Int)));\n"
      "show($I(size(Float)));\n"
      "show($I(size(Array)));\n"
    }, {((void*)0), ((void*)0)}
  };

  return examples;

}
