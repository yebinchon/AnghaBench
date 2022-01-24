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
typedef  int turnstile_stats_update_flags_t ;
typedef  int /*<<< orphan*/  thread_t ;
struct turnstile {int ts_inheritor_flags; int /*<<< orphan*/  ts_waitq; int /*<<< orphan*/  ts_inheritor; } ;
typedef  int boolean_t ;

/* Variables and functions */
 int FALSE ; 
 int TSU_NO_PRI_CHANGE_NEEDED ; 
 int TSU_TURNSTILE_ARG ; 
 int TURNSTILE_INHERITOR_THREAD ; 
 struct turnstile* TURNSTILE_NULL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct turnstile*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct turnstile*) ; 
 int /*<<< orphan*/  FUNC6 (int,int,struct turnstile*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC8(
	struct turnstile **in_turnstile,
	thread_t *out_thread,
	int total_hop,
	turnstile_stats_update_flags_t tsu_flags)
{
	boolean_t needs_update = FALSE;
	struct turnstile *turnstile = *in_turnstile;
	thread_t thread_inheritor = turnstile->ts_inheritor;
	boolean_t first_update = !total_hop;

	FUNC0(turnstile->ts_inheritor_flags & TURNSTILE_INHERITOR_THREAD);
	*in_turnstile = TURNSTILE_NULL;

	/* Check if update is needed before grabbing the thread lock */
	needs_update = FUNC3(thread_inheritor, turnstile);
	if (!needs_update && !first_update) {
		FUNC6(total_hop + 1, TSU_NO_PRI_CHANGE_NEEDED |
			TSU_TURNSTILE_ARG | tsu_flags, turnstile);
		FUNC7(&turnstile->ts_waitq);
		return;
	}

	FUNC2(thread_inheritor);

	/* adjust turnstile position in the thread's inheritor list */
	needs_update = FUNC5(
		thread_inheritor, turnstile);

	/*
	 * Check if thread needs further priority propagation,
	 * since the first hop priority update was done in
	 * turnstile_update_inheritor, do not bailout if it is
	 * the first update as needs_update flag would evaluate to
	 * false for that case.
	 */
	if (!needs_update && !first_update) {
		/* Update turnstile stats before returning */
		FUNC6(total_hop + 1,
			(FUNC1(thread_inheritor)) |
			TSU_TURNSTILE_ARG | tsu_flags,
			turnstile);
		FUNC4(thread_inheritor);
		FUNC7(&turnstile->ts_waitq);
		return;
	}

	/* Unlock the turnstile and update the thread */
	FUNC7(&turnstile->ts_waitq);
	*out_thread = thread_inheritor;
	return;
}