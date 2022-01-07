
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ c_cc; } ;
struct TYPE_4__ {int si_note; } ;
struct tty {scalar_t__ t_lowat; int t_state; TYPE_1__ t_outq; TYPE_2__ t_wsel; } ;


 int CLR (int ,int) ;
 int ISSET (int ,int) ;
 int KNOTE (int *,int) ;
 int TSA_OCOMPLETE (struct tty*) ;
 int TSA_OLOWAT (struct tty*) ;
 int TS_BUSY ;
 int TS_SO_OCOMPLETE ;
 int TS_SO_OLOWAT ;
 int TTY_LOCK_OWNED (struct tty*) ;
 int selwakeup (TYPE_2__*) ;
 int wakeup (int ) ;

void
ttwwakeup(struct tty *tp)
{
 TTY_LOCK_OWNED(tp);

 if (tp->t_outq.c_cc <= tp->t_lowat) {
  selwakeup(&tp->t_wsel);
  KNOTE(&tp->t_wsel.si_note, 1);
 }
 if (ISSET(tp->t_state, TS_BUSY | TS_SO_OCOMPLETE) ==
     TS_SO_OCOMPLETE && tp->t_outq.c_cc == 0) {
  CLR(tp->t_state, TS_SO_OCOMPLETE);
  wakeup(TSA_OCOMPLETE(tp));
 }
 if (ISSET(tp->t_state, TS_SO_OLOWAT) &&
     tp->t_outq.c_cc <= tp->t_lowat) {
  CLR(tp->t_state, TS_SO_OLOWAT);
  wakeup(TSA_OLOWAT(tp));
 }
}
