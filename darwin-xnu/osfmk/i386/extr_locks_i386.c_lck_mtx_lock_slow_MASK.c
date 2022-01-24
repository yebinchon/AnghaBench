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
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_3__ {int /*<<< orphan*/  mutex_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int LCK_MTX_ILOCKED_MSK ; 
 int LCK_MTX_MLOCKED_MSK ; 
 int LCK_MTX_SPIN_MSK ; 
 int LCK_MTX_TAG_DESTROYED ; 
 int LCK_MTX_TAG_INDIRECT ; 
 int LCK_MTX_WAITERS_MSK ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_1__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int*) ; 
 void FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int*) ; 
 void FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC10 (struct _lck_mtx_ext_*,int*) ; 
 int /*<<< orphan*/  FUNC11 (struct _lck_mtx_ext_*) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,uintptr_t) ; 

__attribute__((noinline))
void
FUNC14(
	lck_mtx_t       *lock)
{
	boolean_t	indirect = FALSE;
	uint32_t	state;
	int		first_miss = 0;

	state = FUNC12(lock);

	/* is the interlock or mutex held */
	if (FUNC0(state & ((LCK_MTX_ILOCKED_MSK | LCK_MTX_MLOCKED_MSK)))) {
		/*
		 * Note: both LCK_MTX_TAG_DESTROYED and LCK_MTX_TAG_INDIRECT
		 * have LCK_MTX_ILOCKED_MSK and LCK_MTX_MLOCKED_MSK
		 * set in state (state == lck_mtx_tag)
		 */


		/* is the mutex already held and not indirect */
		if (FUNC0(!(state & LCK_MTX_ILOCKED_MSK))){
			/* no, must have been the mutex */
			return FUNC7(lock, indirect, &first_miss);
		}

		/* check to see if it is marked destroyed */
		if (FUNC0(state == LCK_MTX_TAG_DESTROYED)) {
			return FUNC4(lock);
		}

		/* Is this an indirect mutex? */
		if (FUNC0(state == LCK_MTX_TAG_INDIRECT)) {
			indirect = FUNC3(&lock, &state);

			first_miss = 0;
			FUNC11((struct _lck_mtx_ext_*)lock);

			if (state & LCK_MTX_SPIN_MSK) {
				 /* M_SPIN_MSK was set, so M_ILOCKED_MSK must also be present */
				FUNC1(state & LCK_MTX_ILOCKED_MSK);
				FUNC10((struct _lck_mtx_ext_*)lock, &first_miss);
			}
		}

		if (!FUNC9(lock, &state)) {
			return FUNC7(lock, indirect, &first_miss);
		}
	}

	/* no - can't be INDIRECT, DESTROYED or locked */
	while (FUNC0(!FUNC5(lock, LCK_MTX_MLOCKED_MSK, &state))) {
		if (!FUNC9(lock, &state)) {
			return FUNC7(lock, indirect, &first_miss);
		}
	}

	/* lock and interlock acquired */

	thread_t thread = FUNC2();
	/* record owner of mutex */
	FUNC13(lock, (uintptr_t)thread);

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
		return FUNC6(lock, indirect);
	}

	/* release the interlock */
	FUNC8(lock, FUNC12(lock), indirect);

	return;
}