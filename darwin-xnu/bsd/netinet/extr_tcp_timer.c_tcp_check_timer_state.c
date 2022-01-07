
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcpcb {TYPE_1__* t_inpcb; } ;
struct TYPE_2__ {int inp_flags2; int inp_socket; } ;


 int INP2_TIMEWAIT ;
 int socket_lock_assert_owned (int ) ;
 int tcp_sched_timers (struct tcpcb*) ;
 int tcp_set_lotimer_index (struct tcpcb*) ;

void
tcp_check_timer_state(struct tcpcb *tp)
{
 socket_lock_assert_owned(tp->t_inpcb->inp_socket);

 if (tp->t_inpcb->inp_flags2 & INP2_TIMEWAIT)
  return;

 tcp_set_lotimer_index(tp);

 tcp_sched_timers(tp);
 return;
}
