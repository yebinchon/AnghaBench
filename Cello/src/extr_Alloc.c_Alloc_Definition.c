
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char* Alloc_Definition(void) {
  return
    "struct Alloc {\n"
    "  var (*alloc)(void);\n"
    "  void (*dealloc)(var);\n"
    "};";
}
