#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* uthread_t ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_4__ {int uu_is_throttled; int uu_was_rethrottled; int uu_on_throttlelist; int /*<<< orphan*/  uu_rethrottle_lock; int /*<<< orphan*/  uu_thread; int /*<<< orphan*/ * uu_throttle_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  DBG_FSRW ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rethrottle_wakeups ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int*) ; 

void
FUNC8(uthread_t ut)
{
	/*
	 * If uthread doesn't have throttle state, then there's no chance
	 * of it needing a rethrottle.
	 */
	if (ut->uu_throttle_info == NULL)
		return;

	boolean_t s = FUNC4(FALSE);
	FUNC2(&ut->uu_rethrottle_lock);

	if (!ut->uu_is_throttled)
		ut->uu_was_rethrottled = true;
	else {
		int my_new_level = FUNC6(ut);

		if (my_new_level != ut->uu_on_throttlelist) {
			/*
			 * ut is currently blocked (as indicated by
			 * ut->uu_is_throttled == true)
			 * and we're changing it's throttle level, so
			 * we need to wake it up.
			 */
			ut->uu_is_throttled = false;
			FUNC7(&ut->uu_on_throttlelist);

			rethrottle_wakeups++;
			FUNC1((FUNC0(DBG_FSRW, 102)), FUNC5(ut->uu_thread), ut->uu_on_throttlelist, my_new_level, 0, 0);
		}
	}
	FUNC3(&ut->uu_rethrottle_lock);
	FUNC4(s);
}