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
typedef  int uint32_t ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int KPC_CLASS_CONFIGURABLE_MASK ; 
 int KPC_CLASS_FIXED_MASK ; 
 int KPC_CLASS_POWER_MASK ; 
 int /*<<< orphan*/  FUNC2 (unsigned long long*) ; 
 int /*<<< orphan*/  kpc_config_lock ; 
 int FUNC3 () ; 
 void* FUNC4 () ; 
 scalar_t__ FUNC5 () ; 
 unsigned long long FUNC6 (int) ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

int
FUNC10(uint32_t classes, uint64_t *val)
{
	uint32_t count = 0 ;
	uint64_t pmc_mask = 0ULL;

	FUNC2(val);

	FUNC8(&kpc_config_lock);

	if (classes & KPC_CLASS_FIXED_MASK) {
		/* convert reload values to periods */
		count = FUNC7(KPC_CLASS_FIXED_MASK);
		for (uint32_t i = 0; i < count; ++i)
			*val++ = FUNC5() - FUNC1(i);
	}

	if (classes & KPC_CLASS_CONFIGURABLE_MASK) {
		pmc_mask = FUNC6(KPC_CLASS_CONFIGURABLE_MASK);

		/* convert reload values to periods */
		count = FUNC3();
		for (uint32_t i = 0; i < count; ++i)
			if ((1ULL << i) & pmc_mask)
				*val++ = FUNC4() - FUNC0(i);
	}

	if (classes & KPC_CLASS_POWER_MASK) {
		pmc_mask = FUNC6(KPC_CLASS_POWER_MASK);

		/* convert reload values to periods */
		count = FUNC3();
		for (uint32_t i = 0; i < count; ++i)
			if ((1ULL << i) & pmc_mask)
				*val++ = FUNC4() - FUNC0(i);
	}

	FUNC9(&kpc_config_lock);

	return 0;
}