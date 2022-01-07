
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char* Lock_Definition(void) {
  return
    "struct Lock {\n"
    "  void (*lock)(var);\n"
    "  void (*unlock)(var);\n"
    "  bool (*trylock)(var);\n"
    "};\n";
}
