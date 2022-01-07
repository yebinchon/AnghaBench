
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char* Show_Definition(void) {
  return
    "struct Show {\n"
    "  int (*show)(var, var, int);\n"
    "  int (*look)(var, var, int);\n"
    "};\n";
}
