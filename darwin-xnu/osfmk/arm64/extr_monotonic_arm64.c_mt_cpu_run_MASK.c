#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct mt_cpu {int /*<<< orphan*/ * mtc_snaps; } ;
struct TYPE_3__ {struct mt_cpu cpu_monotonic; } ;
typedef  TYPE_1__ cpu_data_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int MT_CORE_NFIXED ; 
 int /*<<< orphan*/  PMCR0 ; 
 int PMCR0_FIXED_EN ; 
 int PMCR0_INIT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 

void
FUNC6(cpu_data_t *cpu)
{
	uint64_t pmcr0;
	struct mt_cpu *mtc;

	FUNC2(cpu != NULL);
	FUNC2(FUNC4() == FALSE);

	mtc = &cpu->cpu_monotonic;

	for (int i = 0; i < MT_CORE_NFIXED; i++) {
		FUNC5(i, mtc->mtc_snaps[i]);
	}

	/* re-enable the counters */
	FUNC3();

	pmcr0 = FUNC0(PMCR0);
	pmcr0 |= PMCR0_INIT | PMCR0_FIXED_EN;
	FUNC1(PMCR0, pmcr0);
}