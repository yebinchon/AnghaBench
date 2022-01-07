
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char* Format_Definition(void) {
  return
    "struct Format {\n"
    "  int (*format_to)(var,int,const char*,va_list);\n"
    "  int (*format_from)(var,int,const char*,va_list);\n"
    "};\n";
}
