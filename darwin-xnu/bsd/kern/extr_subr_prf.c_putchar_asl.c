
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct putchar_args {int flags; } ;


 int TOLOGLOCKED ;
 int aslbufp ;
 int log_putc_locked (int ,int) ;
 int putchar (int,void*) ;

__attribute__((used)) static void
putchar_asl(int c, void *arg)
{
 struct putchar_args *pca = arg;

 if ((pca->flags & TOLOGLOCKED) && c != '\0' && c != '\r' && c != 0177)
  log_putc_locked(aslbufp, c);
 putchar(c, arg);
}
