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
 scalar_t__ FALSE ; 
 int KPC_CLASS_CONFIGURABLE_MASK ; 
 int KPC_CLASS_POWER_MASK ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ force_all_ctrs ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/ * kpc_pm_handler ; 
 scalar_t__ kpc_pm_has_custom_config ; 
 unsigned long long kpc_pm_pmc_mask ; 
 scalar_t__ FUNC2 (unsigned long long) ; 

uint64_t
FUNC3(uint32_t classes)
{
	uint32_t configurable_count = FUNC1();
	uint64_t cfg_mask = 0ULL, pwr_mask = 0ULL, all_cfg_pmcs_mask = 0ULL;

	/* not configurable classes or no configurable counters */
	if (((classes & (KPC_CLASS_CONFIGURABLE_MASK | KPC_CLASS_POWER_MASK)) == 0) ||
	    (configurable_count == 0))
	{
		goto exit;
	}

	FUNC0(configurable_count < 64);
	all_cfg_pmcs_mask = (1ULL << configurable_count) - 1;

	if (classes & KPC_CLASS_CONFIGURABLE_MASK) {
		if (force_all_ctrs == TRUE)
			cfg_mask |= all_cfg_pmcs_mask;
		else
			cfg_mask |= (~kpc_pm_pmc_mask) & all_cfg_pmcs_mask;
	}

	/*
	 * The power class exists iff:
	 * 	- No tasks acquired all PMCs
	 * 	- PM registered and uses kpc to interact with PMCs
	 */
	if ((force_all_ctrs == FALSE) &&
	    (kpc_pm_handler != NULL) &&
	    (kpc_pm_has_custom_config == FALSE) &&
	    (classes & KPC_CLASS_POWER_MASK))
	{
		pwr_mask |= kpc_pm_pmc_mask & all_cfg_pmcs_mask;
	}

exit:
	/* post-conditions */
	FUNC0( ((cfg_mask | pwr_mask) & (~all_cfg_pmcs_mask)) == 0 );
	FUNC0( FUNC2(cfg_mask | pwr_mask) <= FUNC1() );
	FUNC0( (cfg_mask & pwr_mask) == 0ULL );

	return cfg_mask | pwr_mask;
}