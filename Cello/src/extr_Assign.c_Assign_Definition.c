
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char* Assign_Definition(void) {
  return
    "struct Assign {\n"
    "  void (*assign)(var, var);\n"
    "};\n";
}
