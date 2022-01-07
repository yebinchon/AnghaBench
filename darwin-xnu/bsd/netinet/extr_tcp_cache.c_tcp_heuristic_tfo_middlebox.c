
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpcb {int t_tfo_flags; } ;
struct tcp_cache_key_src {int dummy; } ;


 int TFO_F_HEURISTIC_DONE ;
 int tcp_cache_key_src_create (struct tcpcb*,struct tcp_cache_key_src*) ;
 int tcp_heuristic_tfo_middlebox_common (struct tcp_cache_key_src*) ;

void tcp_heuristic_tfo_middlebox(struct tcpcb *tp)
{
 struct tcp_cache_key_src tcks;

 tp->t_tfo_flags |= TFO_F_HEURISTIC_DONE;

 tcp_cache_key_src_create(tp, &tcks);
 tcp_heuristic_tfo_middlebox_common(&tcks);
}
