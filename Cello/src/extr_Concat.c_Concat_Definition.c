
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char* Concat_Definition(void) {
  return
    "struct Concat {\n"
    "  void (*concat)(var, var);\n"
    "  void (*append)(var, var);\n"
    "};\n";
}
