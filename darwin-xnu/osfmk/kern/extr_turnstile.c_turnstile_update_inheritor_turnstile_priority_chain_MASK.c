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
struct turnstile {int ts_inheritor_flags; int /*<<< orphan*/  ts_waitq; struct turnstile* ts_inheritor; } ;
typedef  int boolean_t ;

/* Variables and functions */
 int FALSE ; 
 int TSU_NO_INHERITOR ; 
 int TSU_NO_PRI_CHANGE_NEEDED ; 
 int TSU_TURNSTILE_ARG ; 
 int TURNSTILE_INHERITOR_TURNSTILE ; 
 struct turnstile* TURNSTILE_NULL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct turnstile*,struct turnstile*) ; 
 int /*<<< orphan*/  FUNC2 (int,int,struct turnstile*) ; 
 int FUNC3 (struct turnstile*,struct turnstile*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(
	struct turnstile **in_out_turnstile,
	int total_hop,
	turnstile_stats_update_flags_t tsu_flags)
{
	boolean_t needs_update = FALSE;
	struct turnstile *turnstile = *in_out_turnstile;
	struct turnstile *inheritor_turnstile = turnstile->ts_inheritor;
	boolean_t first_update = !total_hop;

	FUNC0(turnstile->ts_inheritor_flags & TURNSTILE_INHERITOR_TURNSTILE);
	*in_out_turnstile = TURNSTILE_NULL;

	/* Check if the inheritor turnstile needs to be updated before grabbing the lock */
	needs_update = FUNC1(inheritor_turnstile, turnstile);
	if (!needs_update && !first_update) {
		FUNC2(total_hop + 1, TSU_NO_PRI_CHANGE_NEEDED |
			TSU_TURNSTILE_ARG | tsu_flags,
			turnstile);
		FUNC5(&turnstile->ts_waitq);
		return;
	}

	FUNC4(&inheritor_turnstile->ts_waitq);

	needs_update = FUNC3(
		inheritor_turnstile, turnstile);

	/*
	 * Check if turnstile needs further priority propagation,
	 * since the first hop priority update was done in
	 * turnstile_update_inheritor, do not bailout if it is
	 * the first update as needs_update flag would evaluate to
	 * false for that case.
	 */
	if (!needs_update && !first_update) {
		/* Update turnstile stats before returning */
		FUNC2(total_hop + 1,
			(inheritor_turnstile->ts_inheritor ? TSU_NO_PRI_CHANGE_NEEDED : TSU_NO_INHERITOR) |
			TSU_TURNSTILE_ARG | tsu_flags,
			turnstile);
		FUNC5(&inheritor_turnstile->ts_waitq);
		FUNC5(&turnstile->ts_waitq);
		return;
	}

	/* Unlock the outer turnstile and update the inner turnstile */
	FUNC5(&turnstile->ts_waitq);
	*in_out_turnstile = inheritor_turnstile;
	return;
}