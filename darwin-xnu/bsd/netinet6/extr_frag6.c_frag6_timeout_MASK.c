#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ip6q {TYPE_2__* ip6q_prev; struct ip6q* ip6q_next; int /*<<< orphan*/  ip6q_ttl; } ;
struct fq6_head {int dummy; } ;
struct TYPE_4__ {scalar_t__ ip6q_ttl; } ;
struct TYPE_3__ {int /*<<< orphan*/  ip6s_fragoverflow; int /*<<< orphan*/  ip6s_fragtimeout; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fq6_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct fq6_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct fq6_head*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,struct fq6_head*,struct fq6_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct fq6_head*) ; 
 unsigned int frag6_nfragpackets ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ frag6_timeout_run ; 
 scalar_t__ ip6_maxfragpackets ; 
 struct ip6q ip6q ; 
 int /*<<< orphan*/  ip6qlock ; 
 TYPE_1__ ip6stat ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static void
FUNC10(void *arg)
{
#pragma unused(arg)
	struct fq6_head dfq6, diq6;
	struct ip6q *q6;

	FUNC2(&dfq6);	/* for deferred frees */
	FUNC2(&diq6);	/* for deferred ICMP time exceeded errors */

	/*
	 * Update coarse-grained networking timestamp (in sec.); the idea
	 * is to piggy-back on the timeout callout to update the counter
	 * returnable via net_uptime().
	 */
	FUNC9();

	FUNC7(&ip6qlock);
	q6 = ip6q.ip6q_next;
	if (q6)
		while (q6 != &ip6q) {
			--q6->ip6q_ttl;
			q6 = q6->ip6q_next;
			if (q6->ip6q_prev->ip6q_ttl == 0) {
				ip6stat.ip6s_fragtimeout++;
				/* XXX in6_ifstat_inc(ifp, ifs6_reass_fail) */
				FUNC4(q6->ip6q_prev, &dfq6, &diq6);
			}
		}
	/*
	 * If we are over the maximum number of fragments
	 * (due to the limit being lowered), drain off
	 * enough to get down to the new limit.
	 */
	if (ip6_maxfragpackets >= 0) {
		while (frag6_nfragpackets > (unsigned)ip6_maxfragpackets &&
		    ip6q.ip6q_prev) {
			ip6stat.ip6s_fragoverflow++;
			/* XXX in6_ifstat_inc(ifp, ifs6_reass_fail) */
			FUNC4(ip6q.ip6q_prev, &dfq6, &diq6);
		}
	}
	/* re-arm the purge timer if there's work to do */
	frag6_timeout_run = 0;
	FUNC6();
	FUNC8(&ip6qlock);

	/* free fragments that need to be freed */
	if (!FUNC1(&dfq6))
		FUNC0(&dfq6);

	FUNC5(&diq6);

	FUNC3(FUNC1(&dfq6));
	FUNC3(FUNC1(&diq6));
}