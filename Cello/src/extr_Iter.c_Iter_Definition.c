
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char* Iter_Definition(void) {
  return
    "struct Iter {\n"
    "  var (*iter_init)(var);\n"
    "  var (*iter_next)(var, var);\n"
    "  var (*iter_prev)(var, var);\n"
    "  var (*iter_last)(var);\n"
    "  var (*iter_type)(var);\n"
    "};\n";
}
