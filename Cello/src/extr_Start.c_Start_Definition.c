
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char* Start_Definition(void) {
  return
    "struct Start {\n"
    "  void (*start)(var);\n"
    "  void (*stop)(var);\n"
    "  void (*join)(var);\n"
    "  bool (*running)(var);\n"
    "};\n";
}
