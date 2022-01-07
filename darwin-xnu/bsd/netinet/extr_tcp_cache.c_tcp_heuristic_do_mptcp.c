
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tcpcb {int dummy; } ;
struct tcp_heuristics_head {int dummy; } ;
struct tcp_heuristic {int th_mptcp_backoff; } ;
struct tcp_cache_key_src {int dummy; } ;
typedef int boolean_t ;
struct TYPE_6__ {int tcps_mptcp_heuristic_fallback; int tcps_mptcp_fp_heuristic_fallback; } ;
struct TYPE_5__ {TYPE_1__* mpt_mpte; } ;
struct TYPE_4__ {int mpte_flags; } ;


 int FALSE ;
 int MPTE_FIRSTPARTY ;
 int TRUE ;
 scalar_t__ TSTMP_GT (int ,int ) ;
 scalar_t__ disable_tcp_heuristics ;
 int tcp_cache_key_src_create (struct tcpcb*,struct tcp_cache_key_src*) ;
 struct tcp_heuristic* tcp_getheuristic_with_lock (struct tcp_cache_key_src*,int ,struct tcp_heuristics_head**) ;
 int tcp_heuristic_unlock (struct tcp_heuristics_head*) ;
 int tcp_now ;
 TYPE_3__ tcpstat ;
 TYPE_2__* tptomptp (struct tcpcb*) ;

boolean_t tcp_heuristic_do_mptcp(struct tcpcb *tp)
{
 struct tcp_cache_key_src tcks;
 struct tcp_heuristics_head *head = ((void*)0);
 struct tcp_heuristic *tpheur;

 if (disable_tcp_heuristics)
  return (TRUE);

 tcp_cache_key_src_create(tp, &tcks);


 tpheur = tcp_getheuristic_with_lock(&tcks, 0, &head);
 if (tpheur == ((void*)0))
  return (TRUE);

 if (TSTMP_GT(tpheur->th_mptcp_backoff, tcp_now))
  goto fallback;

 tcp_heuristic_unlock(head);

 return (TRUE);

fallback:
 if (head)
  tcp_heuristic_unlock(head);

 if (tptomptp(tp)->mpt_mpte->mpte_flags & MPTE_FIRSTPARTY)
  tcpstat.tcps_mptcp_fp_heuristic_fallback++;
 else
  tcpstat.tcps_mptcp_heuristic_fallback++;

 return (FALSE);
}
