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
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  force_all_ctrs ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ kpc_pm_has_custom_config ; 
 int kpc_pm_pmc_mask ; 

boolean_t
FUNC4(uint32_t ctr)
{
	uint64_t pmc_mask = 0ULL;

	FUNC0(ctr < (FUNC3() + FUNC1()));

	if (ctr < FUNC3())
		return FUNC2();

	/*
	 * By default kpc manages all PMCs, but if the Power Manager registered
	 * with custom_config=TRUE, the Power Manager manages its reserved PMCs.
	 * However, kpc takes ownership back if a task acquired all PMCs via
	 * force_all_ctrs.
	 */
	pmc_mask = (1ULL << (ctr - FUNC3()));
	if ((pmc_mask & kpc_pm_pmc_mask) && kpc_pm_has_custom_config && !force_all_ctrs)
		return FALSE;

	return TRUE;
}