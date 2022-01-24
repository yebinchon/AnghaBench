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
typedef  int uint32_t ;
typedef  TYPE_1__* thread_t ;
struct _lck_mtx_ext_ {int dummy; } ;
typedef  int /*<<< orphan*/  lck_mtx_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_3__ {int /*<<< orphan*/  mutex_count; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int LCK_MTX_ILOCKED_MSK ; 
 int LCK_MTX_MLOCKED_MSK ; 
 int /*<<< orphan*/  LCK_MTX_SPIN_MSK ; 
 int LCK_MTX_TAG_DESTROYED ; 
 int LCK_MTX_TAG_INDIRECT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LS_LCK_MTX_TRY_SPIN_LOCK_ACQUIRE ; 
 scalar_t__ TRUE ; 
 scalar_t__ FUNC1 (int) ; 
 TYPE_1__* FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ **,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct _lck_mtx_ext_*,int*) ; 
 int /*<<< orphan*/  FUNC8 (struct _lck_mtx_ext_*) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,uintptr_t) ; 

__attribute__((noinline))
boolean_t
FUNC11(
	lck_mtx_t       *lock)
{
	boolean_t       indirect = FALSE;
	uint32_t        state;
	int             first_miss = 0;

	state = FUNC9(lock);

	/* is the interlock or mutex held */
	if (FUNC1(state & ((LCK_MTX_ILOCKED_MSK | LCK_MTX_MLOCKED_MSK)))) {
		/*
		 * Note: both LCK_MTX_TAG_DESTROYED and LCK_MTX_TAG_INDIRECT
		 * have LCK_MTX_ILOCKED_MSK and LCK_MTX_MLOCKED_MSK
		 * set in state (state == lck_mtx_tag)
		 */

		/* is the mutex already held and not indirect */
		if (FUNC1(!(state & LCK_MTX_ILOCKED_MSK))){
			return FALSE;
		}

		/* check to see if it is marked destroyed */
		if (FUNC1(state == LCK_MTX_TAG_DESTROYED)) {
			return FUNC5(lock);
		}

		/* Is this an indirect mutex? */
		if (FUNC1(state == LCK_MTX_TAG_INDIRECT)) {
			indirect = FUNC3(&lock, &state);

			first_miss = 0;
			FUNC8((struct _lck_mtx_ext_*)lock);
		}

		if (!FUNC6(lock, &state)) {
			if (indirect)
				FUNC7((struct _lck_mtx_ext_*)lock, &first_miss);
			return FALSE;
		}
	}

	/* no - can't be INDIRECT, DESTROYED or locked */
	while (FUNC1(!FUNC4(lock, LCK_MTX_SPIN_MSK, &state))) {
		if (!FUNC6(lock, &state)) {
			if (indirect)
				FUNC7((struct _lck_mtx_ext_*)lock, &first_miss);
			return FALSE;
		}
	}

	/* lock and interlock acquired */

	thread_t thread = FUNC2();
	/* record owner of mutex */
	FUNC10(lock, (uintptr_t)thread);

#if MACH_LDEBUG
	if (thread) {
		thread->mutex_count++;		/* lock statistic */
	}
#endif

#if     CONFIG_DTRACE
	LOCKSTAT_RECORD(LS_LCK_MTX_TRY_SPIN_LOCK_ACQUIRE, lock, 0);
#endif
	return TRUE;

}