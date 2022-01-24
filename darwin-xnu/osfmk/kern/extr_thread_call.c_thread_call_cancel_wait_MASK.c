#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_8__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_3__* thread_call_t ;
typedef  int /*<<< orphan*/  spl_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_9__ {TYPE_3__* thc_call; } ;
struct TYPE_12__ {TYPE_1__ thc_state; } ;
struct TYPE_10__ {int /*<<< orphan*/  func; } ;
struct TYPE_11__ {int tc_flags; TYPE_2__ tc_call; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int THREAD_CALL_ALLOC ; 
 int THREAD_CALL_ONCE ; 
 TYPE_8__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 scalar_t__ FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ) ; 

boolean_t
FUNC8(thread_call_t call)
{
	if ((call->tc_flags & THREAD_CALL_ALLOC) == 0)
		FUNC4("thread_call_cancel_wait: can't wait on thread call whose storage I don't own");

	if (!FUNC3())
		FUNC4("unsafe thread_call_cancel_wait");

	if (FUNC0()->thc_state.thc_call == call)
		FUNC4("thread_call_cancel_wait: deadlock waiting on self from inside call: %p to function %p",
		      call, call->tc_call.func);

	spl_t s = FUNC1();

	boolean_t canceled = FUNC5(call);

	if ((call->tc_flags & THREAD_CALL_ONCE) == THREAD_CALL_ONCE) {
		/*
		 * A cancel-wait on a 'once' call will both cancel
		 * the pending call and wait for the in-flight call
		 */

		FUNC7(call, s);
		/* thread call lock unlocked */
	} else {
		/*
		 * A cancel-wait on a normal call will only wait for the in-flight calls
		 * if it did not cancel the pending call.
		 *
		 * TODO: This seems less than useful - shouldn't it do the wait as well?
		 */

		if (canceled == FALSE) {
			FUNC6(call, s);
			/* thread call lock unlocked */
		} else {
			FUNC2(s);
		}
	}

	return canceled;
}