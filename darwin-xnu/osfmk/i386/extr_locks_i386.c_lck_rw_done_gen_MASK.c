#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  TYPE_1__* thread_t ;
typedef  scalar_t__ lck_rw_type_t ;
struct TYPE_12__ {int lck_rw_shared_count; scalar_t__ lck_r_waiting; scalar_t__ lck_w_waiting; scalar_t__ lck_rw_priv_excl; } ;
typedef  TYPE_2__ lck_rw_t ;
struct TYPE_11__ {int sched_flags; int /*<<< orphan*/  rwlock_count; } ;

/* Variables and functions */
 scalar_t__ LCK_RW_TYPE_EXCLUSIVE ; 
 scalar_t__ LCK_RW_TYPE_SHARED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*,int) ; 
 int /*<<< orphan*/  LS_LCK_RW_DONE_RELEASE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int TH_SFLAG_RW_PROMOTED ; 
 TYPE_1__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 

__attribute__((used)) static lck_rw_type_t
FUNC8(
	lck_rw_t	*lck,
	uint32_t	prior_lock_state)
{
	lck_rw_t	*fake_lck;
	lck_rw_type_t	lock_type;
	thread_t	thread;
	uint32_t	rwlock_count;

	/*
	 * prior_lock state is a snapshot of the 1st word of the
	 * lock in question... we'll fake up a pointer to it
	 * and carefully not access anything beyond whats defined
	 * in the first word of a lck_rw_t
	 */
	fake_lck = (lck_rw_t *)&prior_lock_state;

	if (fake_lck->lck_rw_shared_count <= 1) {
		if (fake_lck->lck_w_waiting)
			FUNC6(FUNC2(lck));

		if (!(fake_lck->lck_rw_priv_excl && fake_lck->lck_w_waiting) && fake_lck->lck_r_waiting)
			FUNC6(FUNC1(lck));
	}
	if (fake_lck->lck_rw_shared_count)
		lock_type = LCK_RW_TYPE_SHARED;
	else
		lock_type = LCK_RW_TYPE_EXCLUSIVE;

	/* Check if dropping the lock means that we need to unpromote */
	thread = FUNC3();
	rwlock_count = thread->rwlock_count--;
#if MACH_LDEBUG
	if (rwlock_count == 0) {
		panic("rw lock count underflow for thread %p", thread);
	}
#endif
	if ((rwlock_count == 1 /* field now 0 */) && (thread->sched_flags & TH_SFLAG_RW_PROMOTED)) {
		/* sched_flags checked without lock, but will be rechecked while clearing */
		FUNC4(thread, FUNC7(lck));
	}

#if CONFIG_DTRACE
	LOCKSTAT_RECORD(LS_LCK_RW_DONE_RELEASE, lck, lock_type == LCK_RW_TYPE_SHARED ? 0 : 1);
#endif

	return(lock_type);
}