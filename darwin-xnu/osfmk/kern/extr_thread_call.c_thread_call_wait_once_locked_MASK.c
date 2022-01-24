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
typedef  scalar_t__ wait_result_t ;
typedef  TYPE_1__* thread_call_t ;
typedef  int /*<<< orphan*/  spl_t ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_4__ {int tc_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ THREAD_AWAKENED ; 
 int THREAD_CALL_ALLOC ; 
 int THREAD_CALL_ONCE ; 
 int THREAD_CALL_RUNNING ; 
 int THREAD_CALL_WAIT ; 
 int /*<<< orphan*/  THREAD_CONTINUE_NULL ; 
 int /*<<< orphan*/  THREAD_UNINT ; 
 scalar_t__ THREAD_WAITING ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static boolean_t
FUNC5(thread_call_t call, spl_t s)
{
	FUNC0(call->tc_flags & THREAD_CALL_ALLOC);
	FUNC0(call->tc_flags & THREAD_CALL_ONCE);

	if ((call->tc_flags & THREAD_CALL_RUNNING) == 0) {
		FUNC2(s);
		return FALSE;
	}

	/* call is running, so we have to wait for it */
	call->tc_flags |= THREAD_CALL_WAIT;

	wait_result_t res = FUNC1(call, THREAD_UNINT);
	if (res != THREAD_WAITING)
		FUNC3("Unable to assert wait: %d", res);

	FUNC2(s);

	res = FUNC4(THREAD_CONTINUE_NULL);
	if (res != THREAD_AWAKENED)
		FUNC3("Awoken with %d?", res);

	/* returns unlocked */
	return TRUE;
}