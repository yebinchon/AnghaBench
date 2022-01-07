
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpcb {int dummy; } ;
struct tcp_cache_key_src {int dummy; } ;
typedef int boolean_t ;


 int FALSE ;
 int TRUE ;
 int tcp_cache_key_src_create (struct tcpcb*,struct tcp_cache_key_src*) ;
 scalar_t__ tcp_heuristic_do_tfo_common (struct tcp_cache_key_src*) ;

boolean_t tcp_heuristic_do_tfo(struct tcpcb *tp)
{
 struct tcp_cache_key_src tcks;

 tcp_cache_key_src_create(tp, &tcks);
 if (tcp_heuristic_do_tfo_common(&tcks))
  return (TRUE);

 return (FALSE);
}
