
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char* Pointer_Definition(void) {
  return
    "struct Pointer {\n"
    "  void (*ref)(var, var);\n"
    "  var (*deref)(var);\n"
    "};\n";
}
