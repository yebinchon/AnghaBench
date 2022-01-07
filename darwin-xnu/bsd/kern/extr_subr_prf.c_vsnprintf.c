
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
struct snprintf_arg {char* str; size_t remain; } ;


 int FALSE ;
 int __doprnt (char const*,int ,int ,struct snprintf_arg*,int,int ) ;
 int snprintf_func ;

int
vsnprintf(char *str, size_t size, const char *format, va_list ap)
{
 struct snprintf_arg info;
 int retval;

 info.str = str;
 info.remain = size;
 retval = __doprnt(format, ap, snprintf_func, &info, 10, FALSE);
 if (info.remain >= 1)
  *info.str++ = '\0';
 return retval;
}
