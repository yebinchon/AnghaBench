
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int t_state; } ;


 int ISSET (int ,int ) ;
 int TS_CONNECTED ;
 int TTY_LOCK_OWNED (struct tty*) ;
 int ttstart (struct tty*) ;
 int ttyoutput (int,struct tty*) ;

int
tputchar(int c, struct tty *tp)
{
 TTY_LOCK_OWNED(tp);

 if (!ISSET(tp->t_state, TS_CONNECTED)) {
  return (-1);
 }
 if (c == '\n')
  (void)ttyoutput('\r', tp);
 (void)ttyoutput(c, tp);
 ttstart(tp);
 return (0);
}
