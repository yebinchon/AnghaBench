
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int TRUE ;
 int __doprnt (char const*,int ,int ,void (*) (char),int,int ) ;
 int dummy_putc ;

void
_doprnt_log(
 const char *fmt,
 va_list *argp,

 void (*putc)(char),
 int radix)
{
    __doprnt(fmt, *argp, dummy_putc, putc, radix, TRUE);
}
