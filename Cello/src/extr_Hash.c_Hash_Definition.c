
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char* Hash_Definition(void) {
  return
    "struct Hash {\n"
    "  uint64_t (*hash)(var);\n"
    "};\n";
}
