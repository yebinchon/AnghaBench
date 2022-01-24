#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct fq6_head {int dummy; } ;
struct TYPE_5__ {struct TYPE_5__* ip6q_next; } ;
struct TYPE_4__ {int /*<<< orphan*/  ip6s_fragdropped; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fq6_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct fq6_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct fq6_head*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,struct fq6_head*,struct fq6_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct fq6_head*) ; 
 TYPE_2__ ip6q ; 
 int /*<<< orphan*/  ip6qlock ; 
 TYPE_1__ ip6stat ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void
FUNC8(void)
{
	struct fq6_head dfq6, diq6;

	FUNC2(&dfq6);	/* for deferred frees */
	FUNC2(&diq6);	/* for deferred ICMP time exceeded errors */

	FUNC6(&ip6qlock);
	while (ip6q.ip6q_next != &ip6q) {
		ip6stat.ip6s_fragdropped++;
		/* XXX in6_ifstat_inc(ifp, ifs6_reass_fail) */
		FUNC4(ip6q.ip6q_next, &dfq6, &diq6);
	}
	FUNC7(&ip6qlock);

	/* free fragments that need to be freed */
	if (!FUNC1(&dfq6))
		FUNC0(&dfq6);

	FUNC5(&diq6);

	FUNC3(FUNC1(&dfq6));
	FUNC3(FUNC1(&diq6));
}