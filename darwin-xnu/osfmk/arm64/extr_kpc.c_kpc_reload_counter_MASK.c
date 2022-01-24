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
typedef  unsigned long long uint64_t ;
typedef  scalar_t__ uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 unsigned long long KPC_ARM64_COUNTER_MASK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 () ; 
 unsigned long long FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint64_t
FUNC7(uint32_t ctr)
{
	FUNC1(ctr < (FUNC2() + FUNC4()));

	/* don't reload counters reserved for power management */
	if (!FUNC3(ctr))
		return 0ULL;

	uint64_t old = FUNC5(ctr);
	FUNC6(ctr, FUNC0(ctr));
	return old & KPC_ARM64_COUNTER_MASK;
}