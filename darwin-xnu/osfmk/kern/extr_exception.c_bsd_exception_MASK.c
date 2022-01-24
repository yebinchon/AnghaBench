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
typedef  int /*<<< orphan*/  thread_t ;
typedef  TYPE_1__* task_t ;
typedef  int /*<<< orphan*/  mach_msg_type_number_t ;
typedef  int /*<<< orphan*/  mach_exception_data_t ;
typedef  int /*<<< orphan*/  lck_mtx_t ;
typedef  scalar_t__ kern_return_t ;
typedef  int /*<<< orphan*/  exception_type_t ;
struct TYPE_3__ {int /*<<< orphan*/  exc_actions; int /*<<< orphan*/  itk_lock_data; } ;

/* Variables and functions */
 scalar_t__ KERN_FAILURE ; 
 scalar_t__ KERN_SUCCESS ; 
 scalar_t__ MACH_RCV_PORT_DIED ; 
 TYPE_1__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

kern_return_t
FUNC3(
	exception_type_t	exception,
	mach_exception_data_t	code,
	mach_msg_type_number_t  codeCnt)
{
	task_t			task;
	lck_mtx_t		*mutex;
	thread_t		self = FUNC1();
	kern_return_t		kr;

	/*
	 * Maybe the task level will handle it.
	 */
	task = FUNC0();
	mutex = &task->itk_lock_data;

	kr = FUNC2(self, exception, code, codeCnt, task->exc_actions, mutex);

	if (kr == KERN_SUCCESS || kr == MACH_RCV_PORT_DIED)
		return(KERN_SUCCESS);
	return(KERN_FAILURE);
}