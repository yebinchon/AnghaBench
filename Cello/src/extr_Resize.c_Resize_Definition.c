
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char* Resize_Definition(void) {
  return
    "struct Resize {\n"
    "  void (*resize)(var, size_t);\n"
    "};\n";
}
