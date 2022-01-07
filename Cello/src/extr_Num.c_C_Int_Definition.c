
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char* C_Int_Definition(void) {
  return
    "struct C_Int {\n"
    "  int64_t (*c_int)(var);\n"
    "};\n";
}
