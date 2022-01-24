#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct TYPE_5__ {int /*<<< orphan*/ * mtc_snaps; int /*<<< orphan*/ * mtc_counts; } ;
struct TYPE_6__ {TYPE_1__ cpu_monotonic; } ;
typedef  TYPE_2__ cpu_data_t ;
typedef  int /*<<< orphan*/  arm_saved_state_t ;

/* Variables and functions */
 unsigned int CORE_NCTRS ; 
 int /*<<< orphan*/  DBG_MONOTONIC ; 
 int /*<<< orphan*/  DBG_MT_DEBUG ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int,int) ; 
 unsigned int MT_CORE_NFIXED ; 
 int FUNC2 (unsigned int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  memory_order_relaxed ; 
 scalar_t__ FUNC10 () ; 
 int /*<<< orphan*/ * mt_core_reset_values ; 
 int /*<<< orphan*/  FUNC11 (unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC12 (TYPE_2__*,unsigned int) ; 
 unsigned int mt_microstackshot_ctr ; 
 int /*<<< orphan*/  mt_microstackshot_ctx ; 
 int /*<<< orphan*/  FUNC13 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ mt_microstackshots ; 
 int /*<<< orphan*/  mt_pmis ; 

__attribute__((used)) static void
FUNC14(cpu_data_t *cpu, uint64_t pmsr)
{
	FUNC4(cpu != NULL);
	FUNC4(FUNC10() == FALSE);

	(void)FUNC5(&mt_pmis, 1, memory_order_relaxed);

	/*
	 * monotonic handles any fixed counter PMIs.
	 */
	for (unsigned int i = 0; i < MT_CORE_NFIXED; i++) {
		if ((pmsr & FUNC2(i)) == 0) {
			continue;
		}

		uint64_t count = FUNC12(cpu, i);
		cpu->cpu_monotonic.mtc_counts[i] += count;
		FUNC11(i, mt_core_reset_values[i]);
		cpu->cpu_monotonic.mtc_snaps[i] = mt_core_reset_values[i];

		if (mt_microstackshots && mt_microstackshot_ctr == i) {
			bool user_mode = false;
			arm_saved_state_t *state = FUNC9(FUNC7());
			if (state) {
				user_mode = FUNC3(FUNC8(state));
			}
			FUNC1(FUNC0(DBG_MONOTONIC, DBG_MT_DEBUG, 1),
					mt_microstackshot_ctr, user_mode);
			FUNC13(user_mode, mt_microstackshot_ctx);
		}
	}

	/*
	 * KPC handles the configurable counter PMIs.
	 */
	for (unsigned int i = MT_CORE_NFIXED; i < CORE_NCTRS; i++) {
		if (pmsr & FUNC2(i)) {
			extern void FUNC0(unsigned int ctr);
			FUNC0(i);
		}
	}

	FUNC6();
}