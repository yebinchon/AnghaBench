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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  thread_call_t ;
typedef  int /*<<< orphan*/  thread_call_param_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  LCK_ATTR_NULL ; 
 int /*<<< orphan*/  LCK_GRP_ATTR_NULL ; 
 int /*<<< orphan*/  LCK_SLEEP_DEFAULT ; 
 int /*<<< orphan*/  NSEC_PER_MSEC ; 
 int /*<<< orphan*/  NSEC_PER_SEC ; 
 scalar_t__ TEST_ARG1 ; 
 scalar_t__ TEST_ARG2 ; 
 int THREAD_AWAKENED ; 
 int /*<<< orphan*/  THREAD_CALL_OPTIONS_ONCE ; 
 int /*<<< orphan*/  THREAD_CALL_PRIORITY_HIGH ; 
 int /*<<< orphan*/  THREAD_UNINT ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  once_callback_counter ; 
 int /*<<< orphan*/  test_lock ; 
 int /*<<< orphan*/  test_lock_grp ; 
 int /*<<< orphan*/  test_once_callback ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wait_for_callback ; 
 int /*<<< orphan*/  wait_for_main ; 

__attribute__((used)) static void
FUNC14(void)
{
	FUNC3(&test_lock_grp, "test_thread_call", LCK_GRP_ATTR_NULL);
	FUNC4(&test_lock, &test_lock_grp, LCK_ATTR_NULL);

	thread_call_t call;
	call = FUNC8(&test_once_callback,
	                                         (thread_call_param_t)TEST_ARG1,
	                                         THREAD_CALL_PRIORITY_HIGH,
	                                         THREAD_CALL_OPTIONS_ONCE);

	thread_call_param_t arg2_param = (thread_call_param_t)TEST_ARG2;

	FUNC5(&test_lock);

	FUNC11(call, arg2_param);

	uint64_t deadline;
	FUNC1(10, NSEC_PER_SEC, &deadline);

	kern_return_t kr;
	/* wait for the call to execute, time out after 10s */
	kr = FUNC6(&test_lock, LCK_SLEEP_DEFAULT, &wait_for_callback, THREAD_UNINT, deadline);
	FUNC0(kr, THREAD_AWAKENED, "main function woken by callback");

	FUNC7(&test_lock);

	/* at this point the callback is stuck waiting */

	FUNC0(once_callback_counter, 1, "callback fired");

	boolean_t canceled, pending, freed;

	canceled = FUNC9(call);
	FUNC0(canceled, FALSE, "thread_call_cancel should not succeed");

	pending = FUNC11(call, arg2_param);
	FUNC0(pending, FALSE, "call should not be pending");

	/* sleep for 10ms, the call should not execute */
	FUNC2(10, NSEC_PER_MSEC);

	canceled = FUNC9(call);
	FUNC0(canceled, TRUE, "thread_call_cancel should succeed");

	pending = FUNC11(call, arg2_param);
	FUNC0(pending, FALSE, "call should not be pending");

	freed = FUNC12(call);
	FUNC0(freed, FALSE, "thread_call_free should not succeed");

	pending = FUNC11(call, arg2_param);
	FUNC0(pending, TRUE, "call should be pending");

	FUNC13(&wait_for_main);

	canceled = FUNC10(call);
	FUNC0(canceled, TRUE, "thread_call_cancel_wait should succeed");

	canceled = FUNC9(call);
	FUNC0(canceled, FALSE, "thread_call_cancel should not succeed");

	freed = FUNC12(call);
	FUNC0(freed, TRUE, "thread_call_free should succeed");
}