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
struct turnstile {int ts_priority; int /*<<< orphan*/  ts_inheritor_links; int /*<<< orphan*/  ts_inheritor_queue; } ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int DBG_FUNC_NONE ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  KDEBUG_TRACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TURNSTILE_HEAP_OPERATIONS ; 
 int /*<<< orphan*/  TURNSTILE_MOVED_IN_TURNSTILE_HEAP ; 
 int /*<<< orphan*/  FUNC2 (struct turnstile*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct turnstile*) ; 

__attribute__((used)) static boolean_t
FUNC6(
	struct turnstile *dst_turnstile,
	struct turnstile *src_turnstile)
{
	int src_turnstile_link_priority;
	src_turnstile_link_priority = FUNC3(&(dst_turnstile->ts_inheritor_queue),
				 &(src_turnstile->ts_inheritor_links));

	if (src_turnstile->ts_priority != src_turnstile_link_priority) {
		FUNC0(KDEBUG_TRACE,
			(FUNC1(TURNSTILE_HEAP_OPERATIONS, (TURNSTILE_MOVED_IN_TURNSTILE_HEAP))) | DBG_FUNC_NONE,
			FUNC2(dst_turnstile),
			FUNC2(src_turnstile),
			src_turnstile->ts_priority, src_turnstile_link_priority, 0);
	}

	if (!FUNC4(
			&dst_turnstile->ts_inheritor_queue, &src_turnstile->ts_inheritor_links,
			src_turnstile->ts_priority)) {
		return FALSE;
	}

	/* Update dst turnstile's priority */
	return FUNC5(dst_turnstile);
}