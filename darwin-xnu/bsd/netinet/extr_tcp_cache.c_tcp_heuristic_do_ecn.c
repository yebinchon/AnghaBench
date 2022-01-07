
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpcb {int dummy; } ;
struct tcp_cache_key_src {int dummy; } ;
typedef int boolean_t ;


 int tcp_cache_key_src_create (struct tcpcb*,struct tcp_cache_key_src*) ;
 int tcp_heuristic_do_ecn_common (struct tcp_cache_key_src*) ;

boolean_t tcp_heuristic_do_ecn(struct tcpcb *tp)
{
 struct tcp_cache_key_src tcks;

 tcp_cache_key_src_create(tp, &tcks);
 return tcp_heuristic_do_ecn_common(&tcks);
}
