
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_heuristics_head {int dummy; } ;
struct tcp_heuristic {scalar_t__ th_ecn_droprst; scalar_t__ th_ecn_droprxmt; scalar_t__ th_ecn_synrst; int th_ecn_backoff; } ;
struct tcp_cache_key_src {int dummy; } ;
typedef int boolean_t ;


 scalar_t__ ECN_RETRY_LIMIT ;
 int FALSE ;
 int TRUE ;
 scalar_t__ TSTMP_GT (int ,int ) ;
 scalar_t__ disable_tcp_heuristics ;
 struct tcp_heuristic* tcp_getheuristic_with_lock (struct tcp_cache_key_src*,int ,struct tcp_heuristics_head**) ;
 int tcp_heuristic_unlock (struct tcp_heuristics_head*) ;
 int tcp_now ;

__attribute__((used)) static boolean_t tcp_heuristic_do_ecn_common(struct tcp_cache_key_src *tcks)
{
 struct tcp_heuristics_head *head;
 struct tcp_heuristic *tpheur;
 boolean_t ret = TRUE;

 if (disable_tcp_heuristics)
  return (TRUE);


 tpheur = tcp_getheuristic_with_lock(tcks, 0, &head);
 if (tpheur == ((void*)0))
  return ret;

 if (TSTMP_GT(tpheur->th_ecn_backoff, tcp_now)) {
  ret = FALSE;
 } else {

  if (tpheur->th_ecn_droprst >= ECN_RETRY_LIMIT)
   tpheur->th_ecn_droprst = 0;
  if (tpheur->th_ecn_droprxmt >= ECN_RETRY_LIMIT)
   tpheur->th_ecn_droprxmt = 0;
  if (tpheur->th_ecn_synrst >= ECN_RETRY_LIMIT)
   tpheur->th_ecn_synrst = 0;
 }

 tcp_heuristic_unlock(head);

 return (ret);
}
