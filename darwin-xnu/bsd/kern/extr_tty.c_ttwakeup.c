
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int si_note; } ;
struct tty {int t_state; TYPE_1__ t_rsel; } ;


 scalar_t__ ISSET (int ,int ) ;
 int KNOTE (int *,int) ;
 int SIGIO ;
 int TSA_HUP_OR_INPUT (struct tty*) ;
 int TS_ASYNC ;
 int TTY_LOCK_OWNED (struct tty*) ;
 int selwakeup (TYPE_1__*) ;
 int tty_lock (struct tty*) ;
 int tty_pgsignal (struct tty*,int ,int) ;
 int tty_unlock (struct tty*) ;
 int wakeup (int ) ;

void
ttwakeup(struct tty *tp)
{
 TTY_LOCK_OWNED(tp);

 selwakeup(&tp->t_rsel);
 KNOTE(&tp->t_rsel.si_note, 1);
 if (ISSET(tp->t_state, TS_ASYNC)) {
  tty_unlock(tp);
  tty_pgsignal(tp, SIGIO, 1);
  tty_lock(tp);
 }
 wakeup(TSA_HUP_OR_INPUT(tp));
}
