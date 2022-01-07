
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char* Help_Definition(void) {
  return
    "struct Help {\n"
    "  int (*help_to)(var, int);\n"
    "};\n";
}
