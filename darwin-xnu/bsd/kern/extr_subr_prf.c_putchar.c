
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct putchar_args {int flags; int * tty; } ;


 int TOCONS ;
 int TOLOG ;
 int TOLOGLOCKED ;
 int TOSTR ;
 int TOTTY ;
 int * constty ;
 scalar_t__ debugger_panic_str ;
 int log_putc (int) ;
 int log_putc_locked (int ,int) ;
 int msgbufp ;
 int stub1 (int) ;
 scalar_t__ tputchar (int,int *) ;
 int v_putc (int) ;

void
putchar(int c, void *arg)
{
 struct putchar_args *pca = arg;
 char **sp = (char**) pca->tty;

 if (debugger_panic_str)
  constty = 0;
 if ((pca->flags & TOCONS) && pca->tty == ((void*)0) && constty) {
  pca->tty = constty;
  pca->flags |= TOTTY;
 }
 if ((pca->flags & TOTTY) && pca->tty && tputchar(c, pca->tty) < 0 &&
     (pca->flags & TOCONS) && pca->tty == constty)
  constty = 0;
 if ((pca->flags & TOLOG) && c != '\0' && c != '\r' && c != 0177)
  log_putc(c);
 if ((pca->flags & TOLOGLOCKED) && c != '\0' && c != '\r' && c != 0177)
  log_putc_locked(msgbufp, c);
 if ((pca->flags & TOCONS) && constty == 0 && c != '\0')
  (*v_putc)(c);
 if (pca->flags & TOSTR) {
  **sp = c;
  (*sp)++;
 }
}
