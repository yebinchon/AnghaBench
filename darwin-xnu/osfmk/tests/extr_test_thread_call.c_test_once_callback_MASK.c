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
typedef  scalar_t__ thread_call_param_t ;
typedef  int /*<<< orphan*/  test_param ;
typedef  int /*<<< orphan*/  kern_return_t ;

/* Variables and functions */
 int /*<<< orphan*/  LCK_SLEEP_DEFAULT ; 
 int /*<<< orphan*/  NSEC_PER_SEC ; 
 int TEST_ARG1 ; 
 int TEST_ARG2 ; 
 int THREAD_AWAKENED ; 
 int /*<<< orphan*/  THREAD_UNINT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  once_callback_counter ; 
 int /*<<< orphan*/  test_lock ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wait_for_callback ; 
 int /*<<< orphan*/  wait_for_main ; 

__attribute__((used)) static void
FUNC7(thread_call_param_t param0,
                   thread_call_param_t param1)
{
	FUNC0((test_param)param0, TEST_ARG1, "param0 is correct");
	FUNC0((test_param)param1, TEST_ARG2, "param1 is correct");

	once_callback_counter++;

	FUNC0(once_callback_counter, 1, "only one callback");

	FUNC3(&test_lock);

	FUNC6(&wait_for_callback);

	uint64_t deadline;
	FUNC1(10, NSEC_PER_SEC, &deadline);

	kern_return_t kr;
	/* wait for the main thread to finish, time out after 10s */
	kr = FUNC4(&test_lock, LCK_SLEEP_DEFAULT, &wait_for_main, THREAD_UNINT, deadline);
	FUNC0(kr, THREAD_AWAKENED, " callback woken by main function");

	FUNC5(&test_lock);

	/* sleep for 1s to let the main thread begin the cancel and wait */
	FUNC2(1, NSEC_PER_SEC);
}