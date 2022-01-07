
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int support_vsprintf (char*,char const*,int ) ;

int vsnprintf(char* str, size_t size, const char *format, va_list arg_ptr) {
 return support_vsprintf(str,format,arg_ptr);
}
