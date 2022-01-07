
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char* Swap_Definition(void) {
  return
    "struct Swap {\n"
    "  void (*swap)(var, var);\n"
    "};\n";
}
