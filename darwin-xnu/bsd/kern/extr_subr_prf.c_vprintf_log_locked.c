
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
struct putchar_args {int * tty; int flags; } ;


 int TOLOGLOCKED ;
 int TRUE ;
 int __doprnt (char const*,int ,int ,struct putchar_args*,int,int ) ;
 int putchar ;

int
vprintf_log_locked(const char *fmt, va_list ap)
{
 struct putchar_args pca;

 pca.flags = TOLOGLOCKED;
 pca.tty = ((void*)0);
 __doprnt(fmt, ap, putchar, &pca, 10, TRUE);
 return 0;
}
