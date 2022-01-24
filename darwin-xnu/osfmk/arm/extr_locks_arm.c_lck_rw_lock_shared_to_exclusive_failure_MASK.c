#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  TYPE_1__* thread_t ;
struct TYPE_11__ {int /*<<< orphan*/  lck_rw_want_upgrade; int /*<<< orphan*/  lck_rw_shared_count; } ;
typedef  TYPE_2__ lck_rw_t ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_10__ {int sched_flags; int /*<<< orphan*/  rwlock_count; } ;

/* Variables and functions */
 int DBG_FUNC_NONE ; 
 int /*<<< orphan*/  DBG_MACH_LOCKS ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_RW_LCK_SH_TO_EX_CODE ; 
 int LCK_RW_SHARED_MASK ; 
 int LCK_RW_SHARED_READER ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int LCK_RW_W_WAITING ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int TH_SFLAG_RW_PROMOTED ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 TYPE_1__* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 

__attribute__((used)) static boolean_t
FUNC9(
	lck_rw_t	*lck,
	uint32_t	prior_lock_state)
{
	thread_t	thread = FUNC4();
	uint32_t	rwlock_count;

	/* Check if dropping the lock means that we need to unpromote */
	rwlock_count = thread->rwlock_count--;
#if MACH_LDEBUG
	if (rwlock_count == 0) {
		panic("rw lock count underflow for thread %p", thread);
	}
#endif
	if ((prior_lock_state & LCK_RW_W_WAITING) &&
		((prior_lock_state & LCK_RW_SHARED_MASK) == LCK_RW_SHARED_READER)) {
		/*
		 *	Someone else has requested upgrade.
		 *	Since we've released the read lock, wake
		 *	him up if he's blocked waiting
		 */
		FUNC7(FUNC1(lck));
	}

	if ((rwlock_count == 1 /* field now 0 */) && (thread->sched_flags & TH_SFLAG_RW_PROMOTED)) {
		/* sched_flags checked without lock, but will be rechecked while clearing */
		FUNC5(thread, FUNC8(lck));
	}

	FUNC0(FUNC2(DBG_MACH_LOCKS, LCK_RW_LCK_SH_TO_EX_CODE) | DBG_FUNC_NONE,
		     FUNC3(lck), lck->lck_rw_shared_count, lck->lck_rw_want_upgrade, 0, 0);

	return (FALSE);
}