
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_heuristics_head {int dummy; } ;
struct tcp_heuristic {int dummy; } ;
struct tcp_cache_key_src {int dummy; } ;


 int __tcp_heuristic_tfo_middlebox_common (struct tcp_heuristic*) ;
 struct tcp_heuristic* tcp_getheuristic_with_lock (struct tcp_cache_key_src*,int,struct tcp_heuristics_head**) ;
 int tcp_heuristic_unlock (struct tcp_heuristics_head*) ;

__attribute__((used)) static void tcp_heuristic_tfo_middlebox_common(struct tcp_cache_key_src *tcks)
{
 struct tcp_heuristics_head *head;
 struct tcp_heuristic *tpheur;

 tpheur = tcp_getheuristic_with_lock(tcks, 1, &head);
 if (tpheur == ((void*)0))
  return;

 __tcp_heuristic_tfo_middlebox_common(tpheur);

 tcp_heuristic_unlock(head);
}
