
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_heuristics_head {int dummy; } ;
struct tcp_heuristic {scalar_t__ th_tfo_in_backoff; int th_tfo_enabled_time; int th_tfo_backoff_until; } ;
struct tcp_cache_key_src {int dummy; } ;
typedef int boolean_t ;


 int FALSE ;
 int TRUE ;
 scalar_t__ TSTMP_GT (int ,int ) ;
 scalar_t__ disable_tcp_heuristics ;
 struct tcp_heuristic* tcp_getheuristic_with_lock (struct tcp_cache_key_src*,int ,struct tcp_heuristics_head**) ;
 int tcp_heuristic_unlock (struct tcp_heuristics_head*) ;
 int tcp_now ;

__attribute__((used)) static boolean_t tcp_heuristic_do_tfo_common(struct tcp_cache_key_src *tcks)
{
 struct tcp_heuristics_head *head;
 struct tcp_heuristic *tpheur;

 if (disable_tcp_heuristics)
  return (TRUE);


 tpheur = tcp_getheuristic_with_lock(tcks, 0, &head);
 if (tpheur == ((void*)0))
  return (TRUE);

 if (tpheur->th_tfo_in_backoff == 0)
  goto tfo_ok;

 if (TSTMP_GT(tcp_now, tpheur->th_tfo_backoff_until)) {
  tpheur->th_tfo_in_backoff = 0;
  tpheur->th_tfo_enabled_time = tcp_now;

  goto tfo_ok;
 }

 tcp_heuristic_unlock(head);
 return (FALSE);

tfo_ok:
 tcp_heuristic_unlock(head);
 return (TRUE);
}
