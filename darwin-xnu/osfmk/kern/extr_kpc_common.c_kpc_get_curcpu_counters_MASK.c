#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned long long uint64_t ;
typedef  int uint32_t ;
struct TYPE_2__ {int cpu_id; } ;

/* Variables and functions */
 int FALSE ; 
 int KPC_CLASS_CONFIGURABLE_MASK ; 
 int KPC_CLASS_FIXED_MASK ; 
 int KPC_CLASS_POWER_MASK ; 
 int /*<<< orphan*/  FUNC0 (unsigned long long*) ; 
 TYPE_1__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (unsigned long long*,unsigned long long) ; 
 unsigned long long FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long long*) ; 
 scalar_t__ FUNC6 (unsigned long long) ; 
 int FUNC7 (int) ; 

int
FUNC8(uint32_t classes, int *curcpu, uint64_t *buf)
{
	int enabled=0, offset=0;
	uint64_t pmc_mask = 0ULL;

	FUNC0(buf);

	enabled = FUNC7(FALSE);

	/* grab counters and CPU number as close as possible */
	if (curcpu)
		*curcpu = FUNC1()->cpu_id;

	if (classes & KPC_CLASS_FIXED_MASK) {
		FUNC5(&buf[offset]);
		offset += FUNC4(KPC_CLASS_FIXED_MASK);
	}

	if (classes & KPC_CLASS_CONFIGURABLE_MASK) {
		pmc_mask = FUNC3(KPC_CLASS_CONFIGURABLE_MASK);
		FUNC2(&buf[offset], pmc_mask);
		offset += FUNC6(pmc_mask);
	}

	if (classes & KPC_CLASS_POWER_MASK) {
		pmc_mask = FUNC3(KPC_CLASS_POWER_MASK);
		FUNC2(&buf[offset], pmc_mask);
		offset += FUNC6(pmc_mask);
	}

	FUNC7(enabled);

	return offset;
}