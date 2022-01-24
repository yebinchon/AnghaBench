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
typedef  scalar_t__ vm_offset_t ;
typedef  scalar_t__ kern_return_t ;
struct TYPE_3__ {int member_0; scalar_t__ const far; } ;
typedef  TYPE_1__ ex_cb_state_t ;
typedef  scalar_t__ ex_cb_action_t ;

/* Variables and functions */
 scalar_t__ EXCB_ACTION_NONE ; 
 scalar_t__ EXCB_ACTION_RERUN ; 
 int /*<<< orphan*/  EXCB_CLASS_TEST1 ; 
 int /*<<< orphan*/  EXCB_CLASS_TEST2 ; 
 int /*<<< orphan*/  EXCB_CLASS_TEST3 ; 
 scalar_t__ KERN_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__ const) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  excb_test_action ; 

kern_return_t
FUNC4()
{
	const vm_offset_t far1 = 0xdead0001;
	const vm_offset_t far2 = 0xdead0002;
	kern_return_t kr;
	ex_cb_state_t test_context_1 = {0xdeadbeef};
	ex_cb_state_t test_context_2 = {0xdeadbeef};
	ex_cb_action_t action;

	FUNC1("Testing Exception Callback.");
	
	FUNC1("Running registration test.");

	kr = FUNC3(EXCB_CLASS_TEST1, &excb_test_action, &test_context_1);
	FUNC0(KERN_SUCCESS == kr, "First registration of TEST1 exception callback");
	kr = FUNC3(EXCB_CLASS_TEST2, &excb_test_action, &test_context_2);
	FUNC0(KERN_SUCCESS == kr, "First registration of TEST2 exception callback");

	kr = FUNC3(EXCB_CLASS_TEST2, &excb_test_action, &test_context_2);
	FUNC0(KERN_SUCCESS != kr, "Second registration of TEST2 exception callback");
	kr = FUNC3(EXCB_CLASS_TEST1, &excb_test_action, &test_context_1);
	FUNC0(KERN_SUCCESS != kr, "Second registration of TEST1 exception callback");

	FUNC1("Running invocation test.");

	action = FUNC2(EXCB_CLASS_TEST1, far1);
	FUNC0(EXCB_ACTION_RERUN == action, NULL);
	FUNC0(far1 == test_context_1.far, NULL);

	action = FUNC2(EXCB_CLASS_TEST2, far2);
	FUNC0(EXCB_ACTION_NONE == action, NULL);
	FUNC0(far2 == test_context_2.far, NULL);

	action = FUNC2(EXCB_CLASS_TEST3, 0);
	FUNC0(EXCB_ACTION_NONE == action, NULL);

	return KERN_SUCCESS;
}