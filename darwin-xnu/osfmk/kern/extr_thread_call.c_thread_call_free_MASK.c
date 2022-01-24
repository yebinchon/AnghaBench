#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* thread_call_t ;
typedef  int /*<<< orphan*/  spl_t ;
typedef  scalar_t__ int32_t ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_6__ {int /*<<< orphan*/ * queue; } ;
struct TYPE_7__ {int tc_flags; scalar_t__ tc_refs; scalar_t__ tc_finish_count; scalar_t__ tc_submit_count; TYPE_1__ tc_call; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int THREAD_CALL_RESCHEDULE ; 
 int THREAD_CALL_RUNNING ; 
 int THREAD_CALL_SIGNAL ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  thread_call_zone ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_2__*) ; 

boolean_t
FUNC8(
		thread_call_t		call)
{
	spl_t s = FUNC1();

	if (call->tc_call.queue != NULL ||
	   ((call->tc_flags & THREAD_CALL_RESCHEDULE) != 0)) {
		FUNC5();
		FUNC4(s);

		return (FALSE);
	}

	int32_t refs = --call->tc_refs;
	if (refs < 0) {
		FUNC3("Refcount negative: %d\n", refs);
	}

	if ((THREAD_CALL_SIGNAL | THREAD_CALL_RUNNING)
	  == ((THREAD_CALL_SIGNAL | THREAD_CALL_RUNNING) & call->tc_flags)) {
		FUNC6(call, s);
		/* thread call lock has been unlocked */
	} else {
		FUNC2(s);
	}

	if (refs == 0) {
		FUNC0(call->tc_finish_count == call->tc_submit_count);
		FUNC7(thread_call_zone, call);
	}

	return (TRUE);
}