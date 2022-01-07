
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int dummy; } ;


 int TTY_LOCK_OWNED (struct tty*) ;
 int ttyoutput (char,struct tty*) ;

__attribute__((used)) static void
ttyrubo(struct tty *tp, int count)
{
 TTY_LOCK_OWNED(tp);

 while (count-- > 0) {
  (void)ttyoutput('\b', tp);
  (void)ttyoutput(' ', tp);
  (void)ttyoutput('\b', tp);
 }
}
