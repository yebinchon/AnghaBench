#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_4__ {int cpu_decrementer; } ;
typedef  TYPE_1__ cpu_data_t ;
typedef  int /*<<< orphan*/  arm_saved_state_t ;

/* Variables and functions */
 unsigned int DBG_INTR_TYPE_PMI ; 
 unsigned int DBG_INTR_TYPE_TIMER ; 
 unsigned int DBG_INTR_TYPE_UNKNOWN ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_1__* FUNC0 () ; 
 int FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,unsigned int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned int) ; 

void
FUNC9(arm_saved_state_t *state)
{
	unsigned int type   = DBG_INTR_TYPE_UNKNOWN;
#if DEVELOPMENT || DEBUG
	int preemption_level = get_preemption_level();
#endif
#if MONOTONIC
	uint64_t pmsr = 0, upmsr = 0;
#endif /* MONOTONIC */

#if MONOTONIC
	if (mt_pmi_pending(&pmsr, &upmsr)) {
		type = DBG_INTR_TYPE_PMI;
	} else
#endif /* MONOTONIC */
	if (FUNC2()) {
		type = DBG_INTR_TYPE_TIMER;
	}

	FUNC8(state, type);

#if MONOTONIC
	if (type == DBG_INTR_TYPE_PMI) {
		mt_fiq(getCpuDatap(), pmsr, upmsr);
	} else
#endif /* MONOTONIC */
	{
		/*
		 * We don't know that this is a timer, but we don't have insight into
		 * the other interrupts that go down this path.
		 */

		cpu_data_t *cdp = FUNC0();

		cdp->cpu_decrementer = -1; /* Large */

		/*
		 * ARM64_TODO: whether we're coming from userland is ignored right now.
		 * We can easily thread it through, but not bothering for the
		 * moment (AArch32 doesn't either).
		 */
		FUNC6(TRUE);
	}

	FUNC7();
#if DEVELOPMENT || DEBUG
	if (preemption_level != get_preemption_level())
		panic("fiq type %u changed preemption level from %d to %d", type, preemption_level, get_preemption_level());
#endif
}