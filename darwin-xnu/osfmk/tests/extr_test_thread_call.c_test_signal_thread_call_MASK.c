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
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  NSEC_PER_MSEC ; 
 int /*<<< orphan*/  NSEC_PER_SEC ; 
 scalar_t__ TEST_ARG1 ; 
 scalar_t__ TEST_ARG2 ; 
 int THREAD_CALL_OPTIONS_ONCE ; 
 int THREAD_CALL_OPTIONS_SIGNAL ; 
 int /*<<< orphan*/  THREAD_CALL_PRIORITY_HIGH ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  signal_callback_counter ; 
 int /*<<< orphan*/  test_signal_callback ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(void)
{
	thread_call_t call;
	call = FUNC3(&test_signal_callback,
	                                         (thread_call_param_t)TEST_ARG1,
	                                         THREAD_CALL_PRIORITY_HIGH,
	                                         THREAD_CALL_OPTIONS_ONCE|THREAD_CALL_OPTIONS_SIGNAL);

	thread_call_param_t arg2_param = (thread_call_param_t)TEST_ARG2;

	uint64_t deadline;

	boolean_t canceled, pending, freed;

	FUNC1(10, NSEC_PER_SEC, &deadline);
	pending = FUNC5(call, arg2_param, deadline);
	FUNC0(pending, FALSE, "call should not be pending");

	canceled = FUNC4(call);
	FUNC0(canceled, TRUE, "thread_call_cancel should succeed");

	FUNC1(10, NSEC_PER_MSEC, &deadline);
	pending = FUNC5(call, arg2_param, deadline);
	FUNC0(pending, FALSE, "call should not be pending");

	/* sleep for 50ms to let the interrupt fire */
	FUNC2(50, NSEC_PER_MSEC);

	FUNC0(signal_callback_counter, 1, "callback fired");

	canceled = FUNC4(call);
	FUNC0(canceled, FALSE, "thread_call_cancel should not succeed");

	freed = FUNC6(call);
	FUNC0(freed, TRUE, "thread_call_free should succeed");
}