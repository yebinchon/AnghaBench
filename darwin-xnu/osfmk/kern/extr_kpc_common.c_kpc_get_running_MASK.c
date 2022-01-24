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
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  KPC_CLASS_CONFIGURABLE_MASK ; 
 int /*<<< orphan*/  KPC_CLASS_FIXED_MASK ; 
 int /*<<< orphan*/  KPC_CLASS_POWER_MASK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 () ; 

uint32_t
FUNC3(void)
{
	uint64_t pmc_mask = 0;
	uint32_t cur_state = 0;

	if (FUNC2())
		cur_state |= KPC_CLASS_FIXED_MASK;

	pmc_mask = FUNC0(KPC_CLASS_CONFIGURABLE_MASK);
	if (FUNC1(pmc_mask))
		cur_state |= KPC_CLASS_CONFIGURABLE_MASK;

	pmc_mask = FUNC0(KPC_CLASS_POWER_MASK);
	if ((pmc_mask != 0) && FUNC1(pmc_mask))
		cur_state |= KPC_CLASS_POWER_MASK;

	return cur_state;
}