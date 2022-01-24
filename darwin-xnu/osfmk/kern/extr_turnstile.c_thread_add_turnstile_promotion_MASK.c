#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* thread_t ;
struct turnstile {int /*<<< orphan*/  ts_priority; int /*<<< orphan*/  ts_inheritor_links; } ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_8__ {int /*<<< orphan*/  inheritor_queue; } ;

/* Variables and functions */
 int DBG_FUNC_NONE ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  KDEBUG_TRACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PRIORITY_QUEUE_SCHED_PRI_MAX_HEAP_COMPARE ; 
 int TSU_BOOST_ARG ; 
 int TSU_TURNSTILE_ARG ; 
 int /*<<< orphan*/  TURNSTILE_ADDED_TO_THREAD_HEAP ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TURNSTILE_HEAP_OPERATIONS ; 
 int /*<<< orphan*/  FUNC2 (struct turnstile*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int,int,struct turnstile*) ; 

__attribute__((used)) static boolean_t
FUNC11(
	thread_t thread,
	struct turnstile *turnstile)
{
	boolean_t needs_update = FALSE;

	/* Update the pairing heap */
	FUNC6(thread);

	FUNC0(KDEBUG_TRACE,
		(FUNC1(TURNSTILE_HEAP_OPERATIONS, (TURNSTILE_ADDED_TO_THREAD_HEAP))) | DBG_FUNC_NONE,
		FUNC8(thread),
		FUNC2(turnstile),
		turnstile->ts_priority, 0, 0);

	FUNC3(&(turnstile->ts_inheritor_links));
	if (FUNC4(&thread->inheritor_queue,
			&turnstile->ts_inheritor_links, turnstile->ts_priority,
			PRIORITY_QUEUE_SCHED_PRI_MAX_HEAP_COMPARE)) {
		/* Update thread priority */
		needs_update = FUNC7(thread);
	}

	/* Update turnstile stats */
	if (!needs_update) {
		FUNC10(1,
			FUNC5(thread) |
			TSU_TURNSTILE_ARG | TSU_BOOST_ARG,
			turnstile);
	}

	FUNC9(thread);
	return needs_update;
}