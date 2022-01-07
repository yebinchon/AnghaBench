
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
struct snprintf_arg {char* str; int remain; } ;


 int FALSE ;
 int __doprnt (char const*,int ,int ,struct snprintf_arg*,int,int ) ;
 int snprintf_func ;

int
vsprintf(char *buf, const char *cfmt, va_list ap)
{
 int retval;
 struct snprintf_arg info;

 info.str = buf;
 info.remain = 999999;

 retval = __doprnt(cfmt, ap, snprintf_func, &info, 10, FALSE);
 if (info.remain >= 1) {
  *info.str++ = '\0';
 }
 return 0;
}
