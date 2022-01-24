#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  int turnstile_stats_update_flags_t ;
typedef  int /*<<< orphan*/  thread_t ;
struct turnstile {int /*<<< orphan*/  ts_waitq; scalar_t__ ts_inheritor; } ;
typedef  int boolean_t ;

/* Variables and functions */
 int DBG_FUNC_NONE ; 
 int FALSE ; 
 int /*<<< orphan*/  KDEBUG_TRACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THREAD_NOT_WAITING_ON_TURNSTILE ; 
 int /*<<< orphan*/  THREAD_NULL ; 
 int TSU_NO_INHERITOR ; 
 int TSU_NO_PRI_CHANGE_NEEDED ; 
 int TSU_NO_TURNSTILE ; 
 int TSU_THREAD_ARG ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TURNSTILE_HEAP_OPERATIONS ; 
 struct turnstile* TURNSTILE_NULL ; 
 int /*<<< orphan*/  TURNSTILE_UPDATE_STOPPED_BY_LIMIT ; 
 int /*<<< orphan*/  FUNC2 (struct turnstile*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct turnstile* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct turnstile*) ; 
 scalar_t__ FUNC10 (struct turnstile*) ; 
 int turnstile_max_hop ; 
 int FUNC11 (struct turnstile*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct turnstile*) ; 
 int /*<<< orphan*/  FUNC13 (int,int,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct turnstile*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC17(
	thread_t *in_thread,
	struct turnstile **out_turnstile,
	int thread_hop,
	int total_hop,
	turnstile_stats_update_flags_t tsu_flags)
{
	boolean_t needs_update = FALSE;
	thread_t thread = *in_thread;
	struct turnstile *waiting_turnstile = TURNSTILE_NULL;
	uint32_t turnstile_gencount;
	boolean_t first_update = !total_hop;

	*in_thread = THREAD_NULL;

	/* Check if thread waiting on a turnstile */
	waiting_turnstile = FUNC4(thread);

	if (waiting_turnstile == TURNSTILE_NULL || thread_hop > turnstile_max_hop) {
		FUNC0(KDEBUG_TRACE,
			(FUNC1(TURNSTILE_HEAP_OPERATIONS,
			 (waiting_turnstile ? TURNSTILE_UPDATE_STOPPED_BY_LIMIT : THREAD_NOT_WAITING_ON_TURNSTILE)
			)) | DBG_FUNC_NONE,
			FUNC7(thread),
			turnstile_max_hop,
			thread_hop,
			FUNC2(waiting_turnstile), 0);
		FUNC13(total_hop + 1, TSU_NO_TURNSTILE |
			TSU_THREAD_ARG | tsu_flags, thread);
		FUNC8(thread);
		return;
	}

	/* Check if the thread needs to update the waiting turnstile */
	needs_update = FUNC11(waiting_turnstile, thread);
	if (!needs_update && !first_update) {
		FUNC13(total_hop + 1, TSU_NO_PRI_CHANGE_NEEDED |
			TSU_THREAD_ARG | tsu_flags, thread);
		FUNC8(thread);
		return;
	}

	/* take a reference on thread, turnstile and snapshot of gencount */
	turnstile_gencount = FUNC10(waiting_turnstile);
	FUNC12(waiting_turnstile);
	FUNC6(thread);

	/* drop the thread lock and acquire the turnstile lock */
	FUNC8(thread);
	FUNC15(&waiting_turnstile->ts_waitq);
	FUNC5(thread);

	/* Check if the gencount matches and thread is still waiting on same turnstile */
	if (turnstile_gencount != FUNC10(waiting_turnstile) ||
	    waiting_turnstile != FUNC4(thread)) {
		FUNC13(total_hop + 1, TSU_NO_PRI_CHANGE_NEEDED |
			TSU_THREAD_ARG | tsu_flags, thread);
		/* No updates required, bail out */
		FUNC8(thread);
		FUNC16(&waiting_turnstile->ts_waitq);
		FUNC3(thread);
		FUNC9(waiting_turnstile);
		return;
	}

	/*
	 * The thread is waiting on the waiting_turnstile and we have thread lock,
	 * we can drop the thread and turnstile reference since its on waitq and
	 * it could not be removed from the waitq without the thread lock.
	 */
	FUNC3(thread);
	FUNC9(waiting_turnstile);

	/* adjust thread's position on turnstile waitq */
	needs_update = FUNC14(waiting_turnstile, thread);

	/*
	 * Check if thread needs further priority propagation,
	 * since the first hop priority update was done in
	 * turnstile_update_inheritor, do not bailout if it is
	 * the first update as needs_update flag would evaluate to
	 * false for that case.
	 */
	if (!needs_update && !first_update) {
		FUNC13(total_hop + 1,
			(waiting_turnstile->ts_inheritor ? TSU_NO_PRI_CHANGE_NEEDED : TSU_NO_INHERITOR) |
			TSU_THREAD_ARG | tsu_flags, thread);
		FUNC8(thread);
		FUNC16(&waiting_turnstile->ts_waitq);
		return;
	}

	/* drop the thread lock and update the turnstile */
	FUNC8(thread);
	*out_turnstile = waiting_turnstile;
}