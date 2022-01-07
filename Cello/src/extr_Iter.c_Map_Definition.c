
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char* Map_Definition(void) {
  return
    "struct Map {\n"
    "  var iter;\n"
    "  var curr;\n"
    "  var func;\n"
    "};\n";
}
