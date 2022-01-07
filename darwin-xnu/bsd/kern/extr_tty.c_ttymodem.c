
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty {int t_state; TYPE_1__* t_session; int t_cflag; } ;
struct TYPE_2__ {scalar_t__ s_leader; } ;


 int CLOCAL ;
 int CLR (int ,int ) ;
 int FREAD ;
 int FWRITE ;
 scalar_t__ ISSET (int ,int ) ;
 int MDMBUF ;
 int SET (int ,int ) ;
 int SIGHUP ;
 int TSA_CARR_ON (struct tty*) ;
 int TS_CARR_ON ;
 int TS_CAR_OFLOW ;
 int TS_CONNECTED ;
 int TS_ISOPEN ;
 int TS_TTSTOP ;
 int TS_ZOMBIE ;
 int TTY_LOCK_OWNED (struct tty*) ;
 int psignal (scalar_t__,int ) ;
 int ttstart (struct tty*) ;
 int ttwakeup (struct tty*) ;
 int ttwwakeup (struct tty*) ;
 int ttyflush (struct tty*,int) ;
 int ttystop (struct tty*,int ) ;
 int wakeup (int ) ;

int
ttymodem(struct tty *tp, int flag)
{
 int rval = 1;

 TTY_LOCK_OWNED(tp);

 if (ISSET(tp->t_state, TS_CARR_ON) && ISSET(tp->t_cflag, MDMBUF)) {





  if (flag) {
   CLR(tp->t_state, TS_CAR_OFLOW);
   CLR(tp->t_state, TS_TTSTOP);
   ttstart(tp);
  } else if (!ISSET(tp->t_state, TS_CAR_OFLOW)) {
   SET(tp->t_state, TS_CAR_OFLOW);
   SET(tp->t_state, TS_TTSTOP);
                        ttystop(tp, 0);
  }
 } else if (flag == 0) {



  CLR(tp->t_state, TS_CARR_ON);
  if (ISSET(tp->t_state, TS_ISOPEN) &&
      !ISSET(tp->t_cflag, CLOCAL)) {
   SET(tp->t_state, TS_ZOMBIE);
   CLR(tp->t_state, TS_CONNECTED);
   if (tp->t_session && tp->t_session->s_leader)
    psignal(tp->t_session->s_leader, SIGHUP);
   ttyflush(tp, FREAD | FWRITE);
   rval = 0;
   goto out;
  }
 } else {



  SET(tp->t_state, TS_CARR_ON);
  if (!ISSET(tp->t_state, TS_ZOMBIE))
   SET(tp->t_state, TS_CONNECTED);
  wakeup(TSA_CARR_ON(tp));
  ttwakeup(tp);
  ttwwakeup(tp);
 }

out:
 return (rval);
}
