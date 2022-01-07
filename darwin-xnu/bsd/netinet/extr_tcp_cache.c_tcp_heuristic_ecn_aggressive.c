
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpcb {int dummy; } ;
struct tcp_cache_key_src {int dummy; } ;


 int tcp_cache_key_src_create (struct tcpcb*,struct tcp_cache_key_src*) ;
 int tcp_heuristic_ecn_aggressive_common (struct tcp_cache_key_src*) ;

void tcp_heuristic_ecn_aggressive(struct tcpcb *tp)
{
 struct tcp_cache_key_src tcks;

 tcp_cache_key_src_create(tp, &tcks);
 tcp_heuristic_ecn_aggressive_common(&tcks);
}
