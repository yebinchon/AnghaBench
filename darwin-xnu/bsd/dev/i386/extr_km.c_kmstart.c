
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ c_cc; } ;
struct tty {int t_state; size_t t_line; TYPE_1__ t_outq; } ;
struct TYPE_4__ {int (* l_start ) (struct tty*) ;} ;


 int TS_BUSY ;
 int TS_TIMEOUT ;
 int TS_TTSTOP ;
 int kmoutput (struct tty*) ;
 TYPE_2__* linesw ;
 int stub1 (struct tty*) ;

__attribute__((used)) static void
kmstart(struct tty *tp)
{
 if (tp->t_state & (TS_TIMEOUT | TS_BUSY | TS_TTSTOP))
  goto out;
 if (tp->t_outq.c_cc == 0)
  goto out;
 tp->t_state |= TS_BUSY;
 kmoutput(tp);
 return;

out:
 (*linesw[tp->t_line].l_start)(tp);
 return;
}
