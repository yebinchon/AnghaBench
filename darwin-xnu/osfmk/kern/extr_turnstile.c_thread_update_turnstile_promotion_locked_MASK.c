#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* thread_t ;
struct turnstile {int ts_priority; int /*<<< orphan*/  ts_inheritor_links; } ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_5__ {int /*<<< orphan*/  inheritor_queue; } ;

/* Variables and functions */
 int DBG_FUNC_NONE ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  KDEBUG_TRACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TURNSTILE_HEAP_OPERATIONS ; 
 int /*<<< orphan*/  TURNSTILE_MOVED_IN_THREAD_HEAP ; 
 int /*<<< orphan*/  FUNC2 (struct turnstile*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static boolean_t
FUNC7(
	thread_t thread,
	struct turnstile *turnstile)
{
	int turnstile_link_priority = FUNC3(&(thread->inheritor_queue),
				 &(turnstile->ts_inheritor_links));

	if (turnstile->ts_priority != turnstile_link_priority) {
		FUNC0(KDEBUG_TRACE,
			(FUNC1(TURNSTILE_HEAP_OPERATIONS, (TURNSTILE_MOVED_IN_THREAD_HEAP))) | DBG_FUNC_NONE,
			FUNC5(thread),
			FUNC2(turnstile),
			turnstile->ts_priority,
			turnstile_link_priority, 0);
	}

	if (!FUNC6(&thread->inheritor_queue,
			&turnstile->ts_inheritor_links, turnstile->ts_priority)) {
		return FALSE;
	}

	/* Update thread priority */
	return FUNC4(thread);
}