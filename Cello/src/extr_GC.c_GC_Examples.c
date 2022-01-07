
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Example {char* member_0; char* member_1; } ;



__attribute__((used)) static struct Example* GC_Examples(void) {

  static struct Example examples[] = {
    {
      "Starting & Stopping",
      "var gc = current(GC);\n"
      "stop(gc);\n"
      "var x = new(Int, $I(10)); /* Not added to GC */\n"
      "show($I(running(gc))); /* 0 */\n"
      "del(x); /* Must be deleted when done */\n"
      "start(gc);\n"
    }, {((void*)0), ((void*)0)}
  };

  return examples;

}
