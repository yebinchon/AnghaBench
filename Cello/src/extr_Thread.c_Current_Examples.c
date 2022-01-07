
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Example {char* member_0; char* member_1; } ;



__attribute__((used)) static struct Example* Current_Examples(void) {

  static struct Example examples[] = {
    {
      "Usage",
      "var gc = current(GC);\n"
      "show(gc);\n"
      "var thread = current(Thread);\n"
      "show(thread);\n"
    }, {((void*)0), ((void*)0)}
  };

  return examples;

}
