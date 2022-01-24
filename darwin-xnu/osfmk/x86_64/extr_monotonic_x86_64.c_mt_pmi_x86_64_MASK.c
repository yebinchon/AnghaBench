#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  x86_saved_state_t ;
struct TYPE_4__ {int cs; } ;
struct TYPE_5__ {TYPE_1__ isf; } ;
typedef  TYPE_2__ x86_saved_state64_t ;
typedef  int uint64_t ;
struct mt_cpu {int* mtc_snaps; int /*<<< orphan*/ * mtc_counts; } ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 int CTR_MAX ; 
 int /*<<< orphan*/  DBG_MONOTONIC ; 
 int /*<<< orphan*/  DBG_MT_DEBUG ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  GLOBAL_STATUS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned int,int) ; 
 unsigned int MT_CORE_NFIXED ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  memory_order_relaxed ; 
 scalar_t__ FUNC7 () ; 
 int* mt_core_reset_values ; 
 int /*<<< orphan*/  FUNC8 (unsigned int,int) ; 
 struct mt_cpu* FUNC9 () ; 
 scalar_t__ mt_debug ; 
 unsigned int mt_microstackshot_ctr ; 
 int /*<<< orphan*/  mt_microstackshot_ctx ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ mt_microstackshots ; 
 int FUNC11 (struct mt_cpu*,unsigned int) ; 
 int /*<<< orphan*/  mt_pmis ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC14(x86_saved_state_t *state)
{
	uint64_t status;
	struct mt_cpu *mtc;

	FUNC5(FUNC7() == FALSE);
	mtc = FUNC9();
	status = FUNC12(GLOBAL_STATUS);

	(void)FUNC6(&mt_pmis, 1, memory_order_relaxed);

	for (unsigned int i = 0; i < MT_CORE_NFIXED; i++) {
		if (status & FUNC0(i)) {
			uint64_t prior = CTR_MAX - mtc->mtc_snaps[i];
			FUNC5(prior <= CTR_MAX);
			prior += 1; /* wrapped */

			uint64_t delta = FUNC11(mtc, i);
			mtc->mtc_counts[i] += delta;

			if (mt_microstackshots && mt_microstackshot_ctr == i) {
				x86_saved_state64_t *state64 = FUNC13(state);
				bool user_mode = (state64->isf.cs & 0x3) ? true : false;
				FUNC3(FUNC2(DBG_MONOTONIC, DBG_MT_DEBUG, 1),
						mt_microstackshot_ctr, user_mode);
				FUNC10(user_mode, mt_microstackshot_ctx);
			} else if (mt_debug) {
				FUNC1(FUNC2(DBG_MONOTONIC, DBG_MT_DEBUG, 2),
						mt_microstackshot_ctr, i);
			}

			mtc->mtc_snaps[i] = mt_core_reset_values[i];
			FUNC8(i, mt_core_reset_values[i]);
		}
	}

	/* if any of the configurable counters overflowed, tell kpc */
	if (status & ((FUNC4(1) << 4) - 1)) {
		extern void FUNC0(x86_saved_state_t *state);
		FUNC0(state);
	}
	return 0;
}