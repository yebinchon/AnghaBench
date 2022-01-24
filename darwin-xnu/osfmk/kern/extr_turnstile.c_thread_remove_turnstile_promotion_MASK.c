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
struct turnstile {int /*<<< orphan*/  ts_inheritor_links; } ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_8__ {int /*<<< orphan*/  inheritor_queue; } ;

/* Variables and functions */
 int DBG_FUNC_NONE ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  KDEBUG_TRACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PRIORITY_QUEUE_SCHED_PRI_MAX_HEAP_COMPARE ; 
 int TSU_TURNSTILE_ARG ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TURNSTILE_HEAP_OPERATIONS ; 
 int /*<<< orphan*/  TURNSTILE_REMOVED_FROM_THREAD_HEAP ; 
 int /*<<< orphan*/  FUNC2 (struct turnstile*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int,int,struct turnstile*) ; 

__attribute__((used)) static boolean_t
FUNC10(
	thread_t thread,
	struct turnstile *turnstile)
{
	boolean_t needs_update = FALSE;

	/* Update the pairing heap */
	FUNC5(thread);

	FUNC0(KDEBUG_TRACE,
		(FUNC1(TURNSTILE_HEAP_OPERATIONS, (TURNSTILE_REMOVED_FROM_THREAD_HEAP))) | DBG_FUNC_NONE,
		FUNC7(thread),
		FUNC2(turnstile),
		0, 0, 0);

	if (FUNC3(&thread->inheritor_queue,
			&turnstile->ts_inheritor_links,
			PRIORITY_QUEUE_SCHED_PRI_MAX_HEAP_COMPARE)) {
		/* Update thread priority */
		needs_update = FUNC6(thread);
	}

	/* Update turnstile stats */
	if (!needs_update) {
		FUNC9(1,
			FUNC4(thread) | TSU_TURNSTILE_ARG,
			turnstile);
	}

	FUNC8(thread);
	return needs_update;
}