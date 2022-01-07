
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum glslang_format { ____Placeholder_glslang_format } glslang_format ;


 char const** glslang_formats ;

const char *glslang_format_to_string(enum glslang_format fmt)
{
   return glslang_formats[fmt];
}
