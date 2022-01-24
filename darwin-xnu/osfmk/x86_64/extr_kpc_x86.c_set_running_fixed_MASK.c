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
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 unsigned long long IA32_FIXED_CTR_ENABLE_ALL_CTRS_ALL_RINGS ; 
 unsigned long long IA32_FIXED_CTR_ENABLE_ALL_PMI ; 
 int /*<<< orphan*/  MSR_IA32_PERF_FIXED_CTR_CTRL ; 
 int /*<<< orphan*/  MSR_IA32_PERF_GLOBAL_CTRL ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 unsigned long long FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long long) ; 

__attribute__((used)) static void
FUNC4(boolean_t on)
{
	uint64_t global = 0, mask = 0, fixed_ctrl = 0;
	int i;
	boolean_t enabled;

	if( on )
		/* these are per-thread in SMT */
		fixed_ctrl = IA32_FIXED_CTR_ENABLE_ALL_CTRS_ALL_RINGS | IA32_FIXED_CTR_ENABLE_ALL_PMI;
	else
		/* don't allow disabling fixed counters */
		return;

	FUNC3( MSR_IA32_PERF_FIXED_CTR_CTRL, fixed_ctrl );

	enabled = FUNC1(FALSE);

	/* rmw the global control */
	global = FUNC2(MSR_IA32_PERF_GLOBAL_CTRL);
	for( i = 0; i < (int) FUNC0(); i++ )
		mask |= (1ULL<<(32+i));

	if( on )
		global |= mask;
	else
		global &= ~mask;

	FUNC3(MSR_IA32_PERF_GLOBAL_CTRL, global);

	FUNC1(enabled);
}