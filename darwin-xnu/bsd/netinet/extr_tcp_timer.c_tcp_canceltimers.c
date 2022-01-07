
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int index; int timer_start; } ;
struct tcpcb {TYPE_1__ tentry; scalar_t__* t_timer; } ;


 int TCPT_NONE ;
 int TCPT_NTIMERS ;
 int tcp_now ;
 int tcp_remove_timer (struct tcpcb*) ;

void
tcp_canceltimers(struct tcpcb *tp)
{
 int i;

 tcp_remove_timer(tp);
 for (i = 0; i < TCPT_NTIMERS; i++)
  tp->t_timer[i] = 0;
 tp->tentry.timer_start = tcp_now;
 tp->tentry.index = TCPT_NONE;
}
