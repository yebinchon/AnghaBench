
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpcb {int dummy; } ;
struct tcp_cache_key_src {int dummy; } ;


 int TCPCACHE_F_ECN_SYNRST ;
 int tcp_cache_key_src_create (struct tcpcb*,struct tcp_cache_key_src*) ;
 int tcp_heuristic_inc_counters (struct tcp_cache_key_src*,int ) ;

void tcp_heuristic_ecn_synrst(struct tcpcb *tp)
{
 struct tcp_cache_key_src tcks;

 tcp_cache_key_src_create(tp, &tcks);

 tcp_heuristic_inc_counters(&tcks, TCPCACHE_F_ECN_SYNRST);
}
