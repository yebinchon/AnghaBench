
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char* Doc_Definition(void) {
  return
    "struct Example {\n"
    "  const char* name;\n"
    "  const char* body;\n"
    "};\n"
    "\n"
    "struct Method {\n"
    "  const char* name;\n"
    "  const char* definition;\n"
    "  const char* description;\n"
    "};\n"
    "\n"
    "struct Doc {\n"
    "  const char* (*name)(void);\n"
    "  const char* (*brief)(void);\n"
    "  const char* (*description)(void);\n"
    "  const char* (*definition)(void);\n"
    "  struct Example* (*examples)(void);\n"
    "  struct Method* (*methods)(void);\n"
    "};\n";
}
