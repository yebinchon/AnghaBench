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
typedef  unsigned long long uint32_t ;

/* Variables and functions */
 unsigned long long FUNC0 (unsigned long long) ; 
 unsigned long long FUNC1 (unsigned long long) ; 
 unsigned long long KPC_ARM64_COUNTER_MASK ; 
 unsigned long long KPC_ARM64_COUNTER_OVF_MASK ; 
 int /*<<< orphan*/  FUNC2 (unsigned long long*) ; 
 unsigned long long FUNC3 () ; 
 int FUNC4 () ; 
 unsigned long long FUNC5 () ; 
 unsigned long long FUNC6 (unsigned long long) ; 

int
FUNC7(uint64_t *counterv, uint64_t pmc_mask)
{
	uint32_t cfg_count = FUNC3(), offset = FUNC5();
	uint64_t ctr = 0ULL;

	FUNC2(counterv);

	for (uint32_t i = 0; i < cfg_count; ++i) {
		if (((1ULL << i) & pmc_mask) == 0)
			continue;
		ctr = FUNC6(i + offset);

		if (ctr & KPC_ARM64_COUNTER_OVF_MASK) {
			ctr = FUNC1(i) +
				(FUNC4() - FUNC0(i) + 1 /* Wrap */) +
				(ctr & KPC_ARM64_COUNTER_MASK);
		} else {
			ctr = FUNC1(i) +
				(ctr - FUNC0(i));
		}

		*counterv++ = ctr;
	}

	return 0;
}