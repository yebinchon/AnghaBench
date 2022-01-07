
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
struct tty {int dummy; } ;
struct putchar_args {int flags; struct tty* tty; } ;


 int TRUE ;
 int __doprnt (char const*,int ,int ,struct putchar_args*,int,int ) ;
 int putchar ;

int
prf(const char *fmt, va_list ap, int flags, struct tty *ttyp)
{
 struct putchar_args pca;

 pca.flags = flags;
 pca.tty = ttyp;

 __doprnt(fmt, ap, putchar, &pca, 10, TRUE);

 return 0;
}
