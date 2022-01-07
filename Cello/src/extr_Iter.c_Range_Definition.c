
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char* Range_Definition(void) {
  return
    "struct Range {\n"
    "  var value;\n"
    "  int64_t start;\n"
    "  int64_t stop;\n"
    "  int64_t step;\n"
    "};\n";
}
