
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_heuristics_head {int dummy; } ;
struct tcp_heuristic {int th_ecn_aggressive; scalar_t__ th_ecn_backoff; } ;
struct tcp_cache_key_src {int dummy; } ;


 int TCP_CACHE_OVERFLOW_PROTECT ;
 int tcp_ecn_timeout ;
 struct tcp_heuristic* tcp_getheuristic_with_lock (struct tcp_cache_key_src*,int,struct tcp_heuristics_head**) ;
 int tcp_heuristic_unlock (struct tcp_heuristics_head*) ;
 int tcp_min_to_hz (int ) ;
 scalar_t__ tcp_now ;

__attribute__((used)) static void tcp_heuristic_ecn_aggressive_common(struct tcp_cache_key_src *tcks)
{
 struct tcp_heuristics_head *head;
 struct tcp_heuristic *tpheur;

 tpheur = tcp_getheuristic_with_lock(tcks, 1, &head);
 if (tpheur == ((void*)0))
  return;


 tpheur->th_ecn_backoff = tcp_now +
  (tcp_min_to_hz(tcp_ecn_timeout) << (tpheur->th_ecn_aggressive));





 if (tpheur->th_ecn_aggressive < TCP_CACHE_OVERFLOW_PROTECT)
  tpheur->th_ecn_aggressive++;

 tcp_heuristic_unlock(head);
}
