
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int support_vsprintf (char*,char const*,int ) ;

int vsprintf(char* s, const char* format, va_list arg)
{
 return support_vsprintf( s, format, arg );
}
