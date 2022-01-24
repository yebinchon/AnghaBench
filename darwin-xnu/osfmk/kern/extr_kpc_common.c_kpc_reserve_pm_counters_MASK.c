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
typedef  int uint64_t ;
typedef  unsigned long long uint32_t ;
typedef  int /*<<< orphan*/ * kpc_pm_handler_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  KPC_CLASS_CONFIGURABLE_MASK ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ force_all_ctrs ; 
 unsigned long long FUNC1 () ; 
 unsigned long long FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * kpc_pm_handler ; 
 int /*<<< orphan*/  kpc_pm_has_custom_config ; 
 int kpc_pm_pmc_mask ; 
 unsigned long long FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int /*<<< orphan*/ ) ; 

boolean_t
FUNC5(uint64_t pmc_mask, kpc_pm_handler_t handler,
                        boolean_t custom_config)
{
	uint64_t all_mask = (1ULL << FUNC1()) - 1;
	uint64_t req_mask = 0ULL;

	/* pre-condition */
	FUNC0(handler != NULL);
	FUNC0(kpc_pm_handler == NULL);

	/* check number of counters requested */
	req_mask = (pmc_mask & all_mask);
	FUNC0(FUNC3(req_mask) <= FUNC1());

	/* save the power manager states */
	kpc_pm_has_custom_config = custom_config;
	kpc_pm_pmc_mask = req_mask;
	kpc_pm_handler = handler;

	FUNC4("kpc: pm registered pmc_mask=%llx custom_config=%d\n",
	       req_mask, custom_config);

	/* post-condition */
	{
		uint32_t cfg_count = FUNC2(KPC_CLASS_CONFIGURABLE_MASK);
		uint32_t pwr_count = FUNC3(kpc_pm_pmc_mask);
#pragma unused(cfg_count, pwr_count)
		FUNC0((cfg_count + pwr_count) == FUNC1());
	}

	return force_all_ctrs ? FALSE : TRUE;
}