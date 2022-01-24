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
 int LCK_MTX_TAG_DESTROYED ; 
 int LCK_MTX_TAG_INDIRECT ; 
 int LCK_MTX_WAITERS_MSK ; 
 scalar_t__ TRUE ; 
 scalar_t__ FUNC0 (int) ; 
 TYPE_1__* FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ **,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC8 (struct _lck_mtx_ext_*,int*) ; 
 int /*<<< orphan*/  FUNC9 (struct _lck_mtx_ext_*) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,uintptr_t) ; 

__attribute__((noinline))
boolean_t
FUNC12(
	lck_mtx_t       *lock)
{
	boolean_t       indirect = FALSE;
	uint32_t        state;
	int             first_miss = 0;

	state = FUNC10(lock);

	/* is the interlock or mutex held */
	if (FUNC0(state & ((LCK_MTX_ILOCKED_MSK | LCK_MTX_MLOCKED_MSK)))) {
		/*
		 * Note: both LCK_MTX_TAG_DESTROYED and LCK_MTX_TAG_INDIRECT
		 * have LCK_MTX_ILOCKED_MSK and LCK_MTX_MLOCKED_MSK
		 * set in state (state == lck_mtx_tag)
		 */

		/* is the mutex already held and not indirect */
		if (FUNC0(!(state & LCK_MTX_ILOCKED_MSK))){
			return FALSE;
		}

		/* check to see if it is marked destroyed */
		if (FUNC0(state == LCK_MTX_TAG_DESTROYED)) {
			return FUNC4(lock);
		}

		/* Is this an indirect mutex? */
		if (FUNC0(state == LCK_MTX_TAG_INDIRECT)) {
			indirect = FUNC2(&lock, &state);

			first_miss = 0;
			FUNC9((struct _lck_mtx_ext_*)lock);
		}

		if (!FUNC7(lock, &state)) {
			if (indirect)
				FUNC8((struct _lck_mtx_ext_*)lock, &first_miss);
			return FALSE;
		}
	}

	/* no - can't be INDIRECT, DESTROYED or locked */
	while (FUNC0(!FUNC3(lock, LCK_MTX_MLOCKED_MSK, &state))) {
		if (!FUNC7(lock, &state)) {
			if (indirect)
				FUNC8((struct _lck_mtx_ext_*)lock, &first_miss);
			return FALSE;
		}
	}

	/* lock and interlock acquired */

	thread_t thread = FUNC1();
	/* record owner of mutex */
	FUNC11(lock, (uintptr_t)thread);

#if MACH_LDEBUG
	if (thread) {
		thread->mutex_count++;		/* lock statistic */
	}
#endif
	/*
	 * Check if there are waiters to
	 * inherit their priority.
	 */
	if (FUNC0(state & LCK_MTX_WAITERS_MSK)) {
		return FUNC5(lock);
	}

	/* release the interlock */
	FUNC6(lock, FUNC10(lock));

	return TRUE;

}