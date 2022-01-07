
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char* Push_Definition(void) {
  return
    "struct Push {\n"
    "  void (*push)(var, var);\n"
    "  void (*pop)(var);\n"
    "  void (*push_at)(var, var, var);\n"
    "  void (*pop_at)(var, var);\n"
    "};\n";
}
