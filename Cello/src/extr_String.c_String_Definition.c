
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char* String_Definition(void) {
  return
    "struct String {\n"
    "  char* val;\n"
    "};\n";
}
