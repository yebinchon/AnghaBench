#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct tcp_heuristics_head {int dummy; } ;
struct tcp_heuristic {scalar_t__ th_ecn_droprst; scalar_t__ th_ecn_droprxmt; scalar_t__ th_ecn_synrst; int /*<<< orphan*/  th_ecn_backoff; } ;
struct tcp_cache_key_src {int dummy; } ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 scalar_t__ ECN_RETRY_LIMIT ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ disable_tcp_heuristics ; 
 struct tcp_heuristic* FUNC1 (struct tcp_cache_key_src*,int /*<<< orphan*/ ,struct tcp_heuristics_head**) ; 
 int /*<<< orphan*/  FUNC2 (struct tcp_heuristics_head*) ; 
 int /*<<< orphan*/  tcp_now ; 

__attribute__((used)) static boolean_t FUNC3(struct tcp_cache_key_src *tcks)
{
	struct tcp_heuristics_head *head;
	struct tcp_heuristic *tpheur;
	boolean_t ret = TRUE;

	if (disable_tcp_heuristics)
		return (TRUE);

	/* Get the tcp-heuristic. */
	tpheur = FUNC1(tcks, 0, &head);
	if (tpheur == NULL)
		return ret;

	if (FUNC0(tpheur->th_ecn_backoff, tcp_now)) {
		ret = FALSE;
	} else {
		/* Reset the following counters to start re-evaluating */
		if (tpheur->th_ecn_droprst >= ECN_RETRY_LIMIT)
			tpheur->th_ecn_droprst = 0;
		if (tpheur->th_ecn_droprxmt >= ECN_RETRY_LIMIT)
			tpheur->th_ecn_droprxmt = 0;
		if (tpheur->th_ecn_synrst >= ECN_RETRY_LIMIT)
			tpheur->th_ecn_synrst = 0;
	}

	FUNC2(head);

	return (ret);
}