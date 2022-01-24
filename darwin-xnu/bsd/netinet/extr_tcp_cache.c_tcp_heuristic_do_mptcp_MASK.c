#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct tcpcb {int dummy; } ;
struct tcp_heuristics_head {int dummy; } ;
struct tcp_heuristic {int /*<<< orphan*/  th_mptcp_backoff; } ;
struct tcp_cache_key_src {int dummy; } ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_6__ {int /*<<< orphan*/  tcps_mptcp_heuristic_fallback; int /*<<< orphan*/  tcps_mptcp_fp_heuristic_fallback; } ;
struct TYPE_5__ {TYPE_1__* mpt_mpte; } ;
struct TYPE_4__ {int mpte_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int MPTE_FIRSTPARTY ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ disable_tcp_heuristics ; 
 int /*<<< orphan*/  FUNC1 (struct tcpcb*,struct tcp_cache_key_src*) ; 
 struct tcp_heuristic* FUNC2 (struct tcp_cache_key_src*,int /*<<< orphan*/ ,struct tcp_heuristics_head**) ; 
 int /*<<< orphan*/  FUNC3 (struct tcp_heuristics_head*) ; 
 int /*<<< orphan*/  tcp_now ; 
 TYPE_3__ tcpstat ; 
 TYPE_2__* FUNC4 (struct tcpcb*) ; 

boolean_t FUNC5(struct tcpcb *tp)
{
	struct tcp_cache_key_src tcks;
	struct tcp_heuristics_head *head = NULL;
	struct tcp_heuristic *tpheur;

	if (disable_tcp_heuristics)
		return (TRUE);

	FUNC1(tp, &tcks);

	/* Get the tcp-heuristic. */
	tpheur = FUNC2(&tcks, 0, &head);
	if (tpheur == NULL)
		return (TRUE);

	if (FUNC0(tpheur->th_mptcp_backoff, tcp_now))
		goto fallback;

	FUNC3(head);

	return (TRUE);

fallback:
	if (head)
		FUNC3(head);

	if (FUNC4(tp)->mpt_mpte->mpte_flags & MPTE_FIRSTPARTY)
		tcpstat.tcps_mptcp_fp_heuristic_fallback++;
	else
		tcpstat.tcps_mptcp_heuristic_fallback++;

	return (FALSE);
}