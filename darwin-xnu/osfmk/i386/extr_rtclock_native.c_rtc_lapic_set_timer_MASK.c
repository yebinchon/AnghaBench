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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int DBG_FUNC_NONE ; 
 int DECR_SET_APIC_DEADLINE ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TIMER_CURRENT_COUNT ; 
 int /*<<< orphan*/  busFCvtn2t ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  divide_by_1 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  one_shot ; 
 scalar_t__ FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint64_t
FUNC6(uint64_t deadline, uint64_t now)
{
	uint64_t count;
	uint64_t set = 0;

	if (deadline > 0) {
		/*
		 * Convert delta to bus ticks
		 * - time now is not relevant
		 */
		count = FUNC2(deadline, now);
		set = now + count;
		FUNC4((uint32_t) FUNC5(count, busFCvtn2t));
	} else {
		FUNC3(FALSE, one_shot, divide_by_1, 0);
	}

	FUNC0(
		DECR_SET_APIC_DEADLINE | DBG_FUNC_NONE,
		now, deadline,
		set, FUNC1(TIMER_CURRENT_COUNT),
		0);

	return set;
}