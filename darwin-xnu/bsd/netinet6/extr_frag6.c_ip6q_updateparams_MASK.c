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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_OWNED ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ ip6_maxfragpackets ; 
 scalar_t__ ip6_maxfrags ; 
 int ip6af_limit ; 
 int ip6q_limit ; 
 int /*<<< orphan*/  ip6qlock ; 

__attribute__((used)) static void
FUNC2(void)
{
	FUNC0(&ip6qlock, LCK_MTX_ASSERT_OWNED);
	/*
	 * -1 for unlimited allocation.
	 */
	if (ip6_maxfragpackets < 0)
		ip6q_limit = 0;
	if (ip6_maxfrags < 0)
		ip6af_limit = 0;
	/*
	 * Positive number for specific bound.
	 */
	if (ip6_maxfragpackets > 0)
		ip6q_limit = ip6_maxfragpackets;
	if (ip6_maxfrags > 0)
		ip6af_limit = ip6_maxfrags;
	/*
	 * Zero specifies no further fragment queue allocation -- set the
	 * bound very low, but rely on implementation elsewhere to actually
	 * prevent allocation and reclaim current queues.
	 */
	if (ip6_maxfragpackets == 0)
		ip6q_limit = 1;
	if (ip6_maxfrags == 0)
		ip6af_limit = 1;
	/*
	 * Arm the purge timer if not already and if there's work to do
	 */
	FUNC1();
}