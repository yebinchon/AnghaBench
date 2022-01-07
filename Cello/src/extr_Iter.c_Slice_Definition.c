
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char* Slice_Definition(void) {
  return
    "struct Slice {\n"
    "  var iter;\n"
    "  var range;\n"
    "};\n";
}
