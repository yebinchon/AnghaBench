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
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  KPC_CLASS_CONFIGURABLE_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * kpc_pm_handler ; 
 int /*<<< orphan*/  kpc_pm_has_custom_config ; 
 unsigned long long kpc_pm_pmc_mask ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

void
FUNC4(void)
{
	/* pre-condition */
	FUNC0(kpc_pm_handler != NULL);

	/* release the counters */
	kpc_pm_has_custom_config = FALSE;
	kpc_pm_pmc_mask = 0ULL;
	kpc_pm_handler = NULL;

	FUNC3("kpc: pm released counters\n");

	/* post-condition */
	FUNC0(FUNC2(KPC_CLASS_CONFIGURABLE_MASK) == FUNC1());
}