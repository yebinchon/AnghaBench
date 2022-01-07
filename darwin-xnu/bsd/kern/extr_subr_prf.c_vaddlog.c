
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
struct putchar_args {int * tty; int flags; } ;


 int TOLOGLOCKED ;
 int TRUE ;
 int __doprnt (char const*,int ,int ,struct putchar_args*,int,int ) ;
 int bsd_log_lock () ;
 int bsd_log_unlock () ;
 int logwakeup (int *) ;
 int putchar_asl ;

int
vaddlog(const char *fmt, va_list ap)
{
 struct putchar_args pca = {
  .flags = TOLOGLOCKED,
  .tty = ((void*)0),
 };

 bsd_log_lock();
 __doprnt(fmt, ap, putchar_asl, &pca, 10, TRUE);
 bsd_log_unlock();
 logwakeup(((void*)0));

 return (0);
}
