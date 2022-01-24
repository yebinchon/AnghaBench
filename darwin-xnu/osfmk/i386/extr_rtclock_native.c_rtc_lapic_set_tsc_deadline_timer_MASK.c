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
typedef  scalar_t__ uint64_t ;

/* Variables and functions */
 int DBG_FUNC_NONE ; 
 int DECR_SET_TSC_DEADLINE ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tscFCvtn2t ; 

__attribute__((used)) static uint64_t
FUNC6(uint64_t deadline, uint64_t now)
{
	uint64_t delta;
	uint64_t delta_tsc;
	uint64_t tsc = FUNC4();
	uint64_t set = 0;

	if (deadline > 0) {
		/*
		 * Convert to TSC
		 */
		delta = FUNC1(deadline, now);
		set = now + delta;
		delta_tsc = FUNC5(delta, tscFCvtn2t);
		FUNC3(tsc + delta_tsc);
	} else {
		FUNC3(0);
	}
	
	FUNC0(
		DECR_SET_TSC_DEADLINE | DBG_FUNC_NONE,
		now, deadline,
		tsc, FUNC2(),
		0);

	return set;
}