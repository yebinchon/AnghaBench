#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* xnupost_test_t ;
typedef  size_t uint32_t ;
typedef  int kern_return_t ;
struct TYPE_3__ {int xt_config; scalar_t__ xt_retval; scalar_t__ xt_expected_retval; void* xt_test_actions; void* xt_end_time; int /*<<< orphan*/  (* xt_func ) () ;void* xt_begin_time; int /*<<< orphan*/  xt_name; } ;

/* Variables and functions */
 int KERN_SUCCESS ; 
 int POSTARGS_CONTROLLER_AVAILABLE ; 
 int POSTARGS_RUN_TESTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  T_END ; 
 int /*<<< orphan*/  T_FINISH ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  T_START ; 
 scalar_t__ T_TESTRESULT ; 
 void* XT_ACTION_FAILED ; 
 void* XT_ACTION_PASSED ; 
 void* XT_ACTION_SKIPPED ; 
 int XT_CONFIG_EXPECT_PANIC ; 
 int XT_CONFIG_IGNORE ; 
 int kernel_post_args ; 
 void* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

kern_return_t
FUNC6(xnupost_test_t test_list, uint32_t test_count)
{
	uint32_t i = 0;
	int retval = KERN_SUCCESS;

	if ((kernel_post_args & POSTARGS_RUN_TESTS) == 0) {
		FUNC3("No POST boot-arg set.\n");
		return retval;
	}

	T_START;
	xnupost_test_t testp;
	for (; i < test_count; i++) {
		FUNC5();
		testp = &test_list[i];
		FUNC0(testp->xt_name);
		testp->xt_begin_time = FUNC2();
		testp->xt_end_time   = testp->xt_begin_time;

		/*
		 * If test is designed to panic and controller
		 * is not available then mark as SKIPPED
		 */
		if ((testp->xt_config & XT_CONFIG_EXPECT_PANIC) && !(kernel_post_args & POSTARGS_CONTROLLER_AVAILABLE)) {
			FUNC1(
			    "Test expects panic but "
			    "no controller is present");
			testp->xt_test_actions = XT_ACTION_SKIPPED;
			continue;
		}

		if ((testp->xt_config & XT_CONFIG_IGNORE)) {
			FUNC1("Test is marked as XT_CONFIG_IGNORE");
			testp->xt_test_actions = XT_ACTION_SKIPPED;
			continue;
		}

		testp->xt_func();
		T_END;
		testp->xt_retval = T_TESTRESULT;
		testp->xt_end_time = FUNC2();
		if (testp->xt_retval == testp->xt_expected_retval) {
			testp->xt_test_actions = XT_ACTION_PASSED;
		} else {
			testp->xt_test_actions = XT_ACTION_FAILED;
		}
	}
	T_FINISH;
	return retval;
}