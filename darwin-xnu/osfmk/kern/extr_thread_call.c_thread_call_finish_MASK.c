#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  int uint32_t ;
typedef  TYPE_2__* thread_call_t ;
typedef  int /*<<< orphan*/  thread_call_group_t ;
typedef  scalar_t__ thread_call_flavor_t ;
typedef  int /*<<< orphan*/  spl_t ;
typedef  int /*<<< orphan*/  event_t ;
typedef  int boolean_t ;
struct TYPE_10__ {TYPE_2__* func; } ;
struct TYPE_11__ {scalar_t__ tc_finish_count; int tc_flags; scalar_t__ tc_refs; scalar_t__ tc_soft_deadline; scalar_t__ tc_submit_count; TYPE_1__ tc_call; scalar_t__ tc_deadline; } ;

/* Variables and functions */
 int FALSE ; 
 scalar_t__ TCF_CONTINUOUS ; 
 int THREAD_CALL_DELAYED ; 
 int THREAD_CALL_ONCE ; 
 int THREAD_CALL_RESCHEDULE ; 
 int THREAD_CALL_RUNNING ; 
 int THREAD_CALL_SIGNAL ; 
 int THREAD_CALL_WAIT ; 
 int TIMER_CALL_RATELIMITED ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*,TYPE_2__*) ; 
 scalar_t__ FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  thread_call_zone ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,TYPE_2__*) ; 

__attribute__((used)) static boolean_t
FUNC14(thread_call_t call, thread_call_group_t group, spl_t *s)
{
	uint64_t  time;
	uint32_t  flags;
	boolean_t signal;
	boolean_t repend = FALSE;

	call->tc_finish_count++;
	flags = call->tc_flags;
	signal = ((THREAD_CALL_SIGNAL & flags) != 0);

    if (!signal) {
		/* The thread call thread owns a ref until the call is finished */
		if (call->tc_refs <= 0)
			FUNC8("thread_call_finish: detected over-released thread call: %p", call);
		call->tc_refs--;
    }

	call->tc_flags &= ~(THREAD_CALL_RESCHEDULE | THREAD_CALL_RUNNING | THREAD_CALL_WAIT);

	if ((call->tc_refs != 0) && ((flags & THREAD_CALL_RESCHEDULE) != 0)) {
		FUNC4(flags & THREAD_CALL_ONCE);
		thread_call_flavor_t flavor = FUNC9(call);

		if (THREAD_CALL_DELAYED & flags) {
			time =  FUNC7();
			if (flavor == TCF_CONTINUOUS) {
				time =  FUNC3(time);
			}
			if (call->tc_soft_deadline <= time) {
				call->tc_flags &= ~(THREAD_CALL_DELAYED | TIMER_CALL_RATELIMITED);
				call->tc_deadline = 0;
			}
		}
		if (call->tc_deadline) {
			FUNC1(call, group, call->tc_deadline, flavor);
			if (!signal) {
				FUNC0(call, group, flavor);
			}
		} else if (signal) {
			call->tc_submit_count++;
			repend = TRUE;
		} else {
			FUNC2(call, group);
		}
	}

	if (!signal && (call->tc_refs == 0)) {
		if ((flags & THREAD_CALL_WAIT) != 0) {
			FUNC8("Someone waiting on a thread call that is scheduled for free: %p\n", call->tc_call.func);
		}

		FUNC4(call->tc_finish_count == call->tc_submit_count);

		FUNC6(*s);

		FUNC13(thread_call_zone, call);

		*s = FUNC5();
	}

	if ((flags & THREAD_CALL_WAIT) != 0) {
		/*
		 * Dropping lock here because the sched call for the
		 * high-pri group can take the big lock from under
		 * a thread lock.
		 */
		FUNC11();
		FUNC12((event_t)call);
		FUNC10();
		/* THREAD_CALL_SIGNAL call may have been freed */
	}

	return (repend);
}