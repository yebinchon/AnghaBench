
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char* New_Definition(void) {
  return
    "struct New {\n"
    "  void (*construct_with)(var, var);\n"
    "  void (*destruct)(var);\n"
    "};\n";
}
