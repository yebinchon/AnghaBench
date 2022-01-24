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
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  CACHE_CONTROL_PAT ; 
 int CPUID_FEATURE_PAT ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  MSR_IA32_CR_PAT ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

void
FUNC6(void)
{
	boolean_t	istate;
	uint64_t	pat;

	if (!(FUNC1() & CPUID_FEATURE_PAT))
		return;

	istate = FUNC3(FALSE);

	pat = FUNC5(MSR_IA32_CR_PAT);
	FUNC0("CPU%d PAT: was 0x%016llx\n", FUNC2(), pat);

	/* Change PA6 attribute field to WC if required */
	if ((pat & ~(0x0FULL << 48)) != (0x01ULL << 48)) {
		FUNC4(CACHE_CONTROL_PAT);
	}
	FUNC3(istate);
}