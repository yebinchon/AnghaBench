
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uthread {int uu_siglist; } ;
struct TYPE_2__ {int c_cc; } ;
struct tty {int t_hiwat; int t_state; TYPE_1__ t_outq; } ;
typedef int sigset_t ;


 int OBUFSIZ ;
 scalar_t__ PZERO ;
 int SET (int ,int ) ;
 int TSA_OLOWAT (struct tty*) ;
 int TS_SO_OLOWAT ;
 int TTY_LOCK_OWNED (struct tty*) ;
 int current_thread () ;
 scalar_t__ get_bsdthread_info (int ) ;
 int hz ;
 int ttstart (struct tty*) ;
 int ttysleep (struct tty*,int ,scalar_t__,char*,int ) ;

int
ttycheckoutq(struct tty *tp, int wait)
{
 int hiwat;
 sigset_t oldsig;
 struct uthread *ut;

 TTY_LOCK_OWNED(tp);

 ut = (struct uthread *)get_bsdthread_info(current_thread());

 hiwat = tp->t_hiwat;
 oldsig = wait ? ut->uu_siglist : 0;
 if (tp->t_outq.c_cc > hiwat + OBUFSIZ + 100)
  while (tp->t_outq.c_cc > hiwat) {
   ttstart(tp);
   if (tp->t_outq.c_cc <= hiwat)
    break;
   if (wait == 0 || ut->uu_siglist != oldsig) {
    return (0);
   }
   SET(tp->t_state, TS_SO_OLOWAT);
   ttysleep(tp, TSA_OLOWAT(tp), PZERO - 1, "ttoutq", hz);
  }
 return (1);
}
