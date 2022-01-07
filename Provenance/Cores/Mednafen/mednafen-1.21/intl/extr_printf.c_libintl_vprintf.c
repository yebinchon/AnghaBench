
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int libintl_vfprintf (int ,char const*,int ) ;
 int stdout ;

int
libintl_vprintf (const char *format, va_list args)
{
  return libintl_vfprintf (stdout, format, args);
}
