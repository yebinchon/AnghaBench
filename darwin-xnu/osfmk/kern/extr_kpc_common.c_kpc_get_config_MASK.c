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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  kpc_config_t ;

/* Variables and functions */
 int EPERM ; 
 int KPC_CLASS_CONFIGURABLE_MASK ; 
 int KPC_CLASS_FIXED_MASK ; 
 int KPC_CLASS_POWER_MASK ; 
 int KPC_CLASS_RAWPMU_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 () ; 

int
FUNC7(uint32_t classes, kpc_config_t *current_config)
{
	uint32_t count = 0;

	FUNC0(current_config);

	if (classes & KPC_CLASS_FIXED_MASK) {
		FUNC4(&current_config[count]);
		count += FUNC1(KPC_CLASS_FIXED_MASK);
	}

	if (classes & KPC_CLASS_CONFIGURABLE_MASK) {
		uint64_t pmc_mask = FUNC3(KPC_CLASS_CONFIGURABLE_MASK);
		FUNC2(&current_config[count], pmc_mask);
		count += FUNC1(KPC_CLASS_CONFIGURABLE_MASK);
	}

	if (classes & KPC_CLASS_POWER_MASK) {
		uint64_t pmc_mask = FUNC3(KPC_CLASS_POWER_MASK);
		FUNC2(&current_config[count], pmc_mask);
		count += FUNC1(KPC_CLASS_POWER_MASK);
	}

	if (classes & KPC_CLASS_RAWPMU_MASK)
	{
		// Client shouldn't ask for config words that aren't available.
		// Most likely, they'd misinterpret the returned buffer if we
		// allowed this.
		if( FUNC6() )
		{
			return EPERM;
		}
		FUNC5(&current_config[count]);
		count += FUNC1(KPC_CLASS_RAWPMU_MASK);
	}

	return 0;
}