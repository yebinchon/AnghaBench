
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Example {char* member_0; char* member_1; } ;



__attribute__((used)) static struct Example* Alloc_Examples(void) {

  static struct Example examples[] = {
    {
     "Usage",
     "/* Allocation deallocated by Garbage Collector */\n"
     "var x = alloc(Int);\n"
     "construct(x, $I(10));\n",
    }, {
     "Avoid Garbage Collection",
     "/* Allocation must be manually deallocated */\n"
     "var x = alloc_raw(Int);\n"
     "construct(x, $I(10));\n"
     "destruct(x);\n"
     "dealloc_raw(x);\n",
    }, {((void*)0), ((void*)0)}
  };

  return examples;
}
