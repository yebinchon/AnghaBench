
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int t_state; int t_lflag; } ;


 int CLR (int,int ) ;
 int ECHO ;
 int ECHOCTL ;
 int ECHONL ;
 int EXTPROC ;
 int FLUSHO ;
 int ISSET (int,int ) ;
 int TS_CNTTB ;
 int TTY_CHARMASK ;
 int TTY_LOCK_OWNED (struct tty*) ;
 int ttyoutput (int,struct tty*) ;

__attribute__((used)) static void
ttyecho(int c, struct tty *tp)
{
 TTY_LOCK_OWNED(tp);

 if (!ISSET(tp->t_state, TS_CNTTB))
  CLR(tp->t_lflag, FLUSHO);
 if ((!ISSET(tp->t_lflag, ECHO) &&
      (c != '\n' || !ISSET(tp->t_lflag, ECHONL))) ||
     ISSET(tp->t_lflag, EXTPROC))
  return;
 if (ISSET(tp->t_lflag, ECHOCTL) &&
     ((ISSET(c, TTY_CHARMASK) <= 037 && c != '\t' && c != '\n') ||
     ISSET(c, TTY_CHARMASK) == 0177)) {
  (void)ttyoutput('^', tp);
  CLR(c, ~TTY_CHARMASK);
  if (c == 0177)
   c = '?';
  else
   c += 'A' - 1;
 }
 (void)ttyoutput(c, tp);
}
