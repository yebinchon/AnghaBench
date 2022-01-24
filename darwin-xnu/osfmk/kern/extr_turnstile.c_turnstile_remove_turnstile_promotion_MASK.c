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
struct turnstile {int /*<<< orphan*/  ts_waitq; scalar_t__ ts_inheritor; int /*<<< orphan*/  ts_inheritor_links; int /*<<< orphan*/  ts_inheritor_queue; } ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int DBG_FUNC_NONE ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  KDEBUG_TRACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PRIORITY_QUEUE_SCHED_PRI_MAX_HEAP_COMPARE ; 
 int TSU_NO_INHERITOR ; 
 int TSU_NO_PRI_CHANGE_NEEDED ; 
 int TSU_TURNSTILE_ARG ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TURNSTILE_HEAP_OPERATIONS ; 
 int /*<<< orphan*/  TURNSTILE_REMOVED_FROM_TURNSTILE_HEAP ; 
 int /*<<< orphan*/  FUNC2 (struct turnstile*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct turnstile*) ; 
 int /*<<< orphan*/  FUNC5 (int,int,struct turnstile*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static boolean_t
FUNC8(
	struct turnstile *dst_turnstile,
	struct turnstile *src_turnstile)
{
	boolean_t needs_update = FALSE;

	/* Update the pairing heap */
	FUNC6(&dst_turnstile->ts_waitq);

	FUNC0(KDEBUG_TRACE,
		(FUNC1(TURNSTILE_HEAP_OPERATIONS, (TURNSTILE_REMOVED_FROM_TURNSTILE_HEAP))) | DBG_FUNC_NONE,
		FUNC2(dst_turnstile),
		FUNC2(src_turnstile),
		0, 0, 0);

	if (FUNC3(&dst_turnstile->ts_inheritor_queue,
			&src_turnstile->ts_inheritor_links,
			PRIORITY_QUEUE_SCHED_PRI_MAX_HEAP_COMPARE)) {
		/* Update dst turnstile priority */
		needs_update = FUNC4(dst_turnstile);
	}

	/* Update turnstile stats */
	if (!needs_update) {
		FUNC5(1,
			(dst_turnstile->ts_inheritor ? TSU_NO_PRI_CHANGE_NEEDED : TSU_NO_INHERITOR) |
			TSU_TURNSTILE_ARG, src_turnstile);
	}

	FUNC7(&dst_turnstile->ts_waitq);
	return needs_update;
}