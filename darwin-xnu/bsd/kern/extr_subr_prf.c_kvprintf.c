
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int TRUE ;
 int __doprnt (char const*,int ,void (*) (int,void*),void*,int,int ) ;

int
kvprintf(char const *fmt, void (*func)(int, void*), void *arg, int radix, va_list ap)
{
 __doprnt(fmt, ap, func, arg, radix, TRUE);
 return 0;
}
