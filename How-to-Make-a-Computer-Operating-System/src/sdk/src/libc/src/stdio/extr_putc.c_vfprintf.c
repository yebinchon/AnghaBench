
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef int FILE ;


 int support_vfprintf (int *,char const*,int ) ;

int vfprintf(FILE* stream, const char* format, va_list arg)
{
 return support_vfprintf( stream, format, arg );
}
