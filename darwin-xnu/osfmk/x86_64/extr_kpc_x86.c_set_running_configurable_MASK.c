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
 int IA32_PERFEVTSEL_EN ; 
 int IA32_PERFEVTSEL_PMI ; 
 int FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  MSR_IA32_PERF_GLOBAL_CTRL ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC8(uint64_t target_mask, uint64_t state_mask)
{
	uint32_t cfg_count = FUNC2();
	uint64_t global = 0ULL, cfg = 0ULL, save = 0ULL;
	boolean_t enabled;

	enabled = FUNC3(FALSE);

	/* rmw the global control */
	global = FUNC4(MSR_IA32_PERF_GLOBAL_CTRL);

	/* need to save and restore counter since it resets when reconfigured */
	for (uint32_t i = 0; i < cfg_count; ++i) {
		cfg = FUNC0(i);
		save = FUNC1(i);
		FUNC5(i, cfg | IA32_PERFEVTSEL_PMI | IA32_PERFEVTSEL_EN);
		FUNC6(i, save);
	}

	/* update the global control value */
	global &= ~target_mask;	/* clear the targeted PMCs bits */
	global |= state_mask;	/* update the targeted PMCs bits with their new states */
	FUNC7(MSR_IA32_PERF_GLOBAL_CTRL, global);

	FUNC3(enabled);
}