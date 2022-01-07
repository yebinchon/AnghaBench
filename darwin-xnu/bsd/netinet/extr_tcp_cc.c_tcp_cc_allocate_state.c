
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpcb {scalar_t__ tcp_cc_index; struct tcp_ccstate* t_ccstate; } ;
struct tcp_ccstate {int dummy; } ;


 scalar_t__ TCP_CC_ALGO_CUBIC_INDEX ;
 scalar_t__ TCP_CC_ALGO_NEWRENO_INDEX ;
 int bzero (struct tcp_ccstate*,int) ;
 int tcp_cc_zone ;
 scalar_t__ zalloc (int ) ;

void
tcp_cc_allocate_state(struct tcpcb *tp)
{
 if (tp->tcp_cc_index == TCP_CC_ALGO_CUBIC_INDEX &&
  tp->t_ccstate == ((void*)0)) {
  tp->t_ccstate = (struct tcp_ccstate *)zalloc(tcp_cc_zone);






  if (tp->t_ccstate == ((void*)0))
   tp->tcp_cc_index = TCP_CC_ALGO_NEWRENO_INDEX;
  else
   bzero(tp->t_ccstate, sizeof(*tp->t_ccstate));
 }
}
