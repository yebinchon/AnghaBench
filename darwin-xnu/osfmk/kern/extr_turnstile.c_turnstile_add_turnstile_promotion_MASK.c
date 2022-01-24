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
struct turnstile {int /*<<< orphan*/  ts_waitq; scalar_t__ ts_inheritor; int /*<<< orphan*/  ts_priority; int /*<<< orphan*/  ts_inheritor_links; int /*<<< orphan*/  ts_inheritor_queue; } ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int DBG_FUNC_NONE ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  KDEBUG_TRACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PRIORITY_QUEUE_SCHED_PRI_MAX_HEAP_COMPARE ; 
 int TSU_BOOST_ARG ; 
 int TSU_NO_INHERITOR ; 
 int TSU_NO_PRI_CHANGE_NEEDED ; 
 int TSU_TURNSTILE_ARG ; 
 int /*<<< orphan*/  TURNSTILE_ADDED_TO_TURNSTILE_HEAP ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TURNSTILE_HEAP_OPERATIONS ; 
 int /*<<< orphan*/  FUNC2 (struct turnstile*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct turnstile*) ; 
 int /*<<< orphan*/  FUNC6 (int,int,struct turnstile*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static boolean_t
FUNC9(
	struct turnstile *dst_turnstile,
	struct turnstile *src_turnstile)
{
	boolean_t needs_update = FALSE;

	/* Update the pairing heap */
	FUNC7(&dst_turnstile->ts_waitq);

	FUNC0(KDEBUG_TRACE,
		(FUNC1(TURNSTILE_HEAP_OPERATIONS, (TURNSTILE_ADDED_TO_TURNSTILE_HEAP))) | DBG_FUNC_NONE,
		FUNC2(dst_turnstile),
		FUNC2(src_turnstile),
		src_turnstile->ts_priority, 0, 0);

	FUNC3(&(src_turnstile->ts_inheritor_links));
	if (FUNC4(&dst_turnstile->ts_inheritor_queue,
			&src_turnstile->ts_inheritor_links, src_turnstile->ts_priority,
			PRIORITY_QUEUE_SCHED_PRI_MAX_HEAP_COMPARE)) {
		/* Update dst turnstile priority */
		needs_update = FUNC5(dst_turnstile);
	}

	/* Update turnstile stats */
	if (!needs_update) {
		FUNC6(1,
			(dst_turnstile->ts_inheritor ? TSU_NO_PRI_CHANGE_NEEDED : TSU_NO_INHERITOR) |
			TSU_TURNSTILE_ARG | TSU_BOOST_ARG, src_turnstile);
	}

	FUNC8(&dst_turnstile->ts_waitq);
	return needs_update;
}