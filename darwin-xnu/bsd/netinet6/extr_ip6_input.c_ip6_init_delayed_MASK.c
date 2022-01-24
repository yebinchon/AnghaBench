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
 int hz ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  in6_tmpaddrtimer ; 
 int ip6_desync_factor ; 
 int ip6_temp_preferred_lifetime ; 
 int ip6_temp_regen_advance ; 
 int /*<<< orphan*/  lo_ifp ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC3(void)
{
	(void) FUNC0(lo_ifp);

	/* timer for regeneranation of temporary addresses randomize ID */
	FUNC2(in6_tmpaddrtimer, NULL,
	    (ip6_temp_preferred_lifetime - ip6_desync_factor -
	    ip6_temp_regen_advance) * hz);

#if NSTF
	stfattach();
#endif /* NSTF */
}