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

/* Variables and functions */
 int KPC_CLASS_CONFIGURABLE_MASK ; 
 int KPC_CLASS_FIXED_MASK ; 
 int KPC_CLASS_POWER_MASK ; 
 int KPC_CLASS_RAWPMU_MASK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 () ; 

uint32_t
FUNC5(uint32_t classes)
{
	uint32_t count = 0;

	if (classes & KPC_CLASS_FIXED_MASK)
		count += FUNC1();

	if (classes & (KPC_CLASS_CONFIGURABLE_MASK | KPC_CLASS_POWER_MASK)) {
		uint64_t pmc_mask = FUNC2(classes);
		count += FUNC0(pmc_mask);
	}

	if ((classes & KPC_CLASS_RAWPMU_MASK) && !FUNC3())
		count += FUNC4();

	return count;
}