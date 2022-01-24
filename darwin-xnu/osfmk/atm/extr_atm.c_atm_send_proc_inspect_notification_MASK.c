#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  thread_t ;
typedef  TYPE_1__* task_t ;
typedef  int /*<<< orphan*/  mach_port_t ;
typedef  int kern_return_t ;
typedef  int /*<<< orphan*/  int32_t ;
typedef  TYPE_2__* atm_task_descriptor_t ;
struct TYPE_10__ {int /*<<< orphan*/  trace_buffer_size; int /*<<< orphan*/  trace_buffer; } ;
struct TYPE_9__ {TYPE_2__* atm_context; } ;

/* Variables and functions */
 TYPE_2__* ATM_TASK_DESCRIPTOR_NULL ; 
 int ATM_TRACE_DISABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int KERN_FAILURE ; 
 int KERN_INVALID_TASK ; 
 int KERN_NOT_SUPPORTED ; 
 int KERN_SUCCESS ; 
 int /*<<< orphan*/  MACH_PORT_NULL ; 
 int MACH_SEND_TIMED_OUT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ disable_atm ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

kern_return_t
FUNC14(
	task_t task,
	int32_t traced_pid,
	uint64_t traced_uniqueid)
{
	mach_port_t user_port = MACH_PORT_NULL;
	mach_port_t memory_port = MACH_PORT_NULL;
	kern_return_t kr;
	atm_task_descriptor_t task_descriptor = ATM_TASK_DESCRIPTOR_NULL;
	uint64_t buffer_size = 0;
	int			error;
	thread_t th = FUNC5();

	if (disable_atm || (FUNC2() & ATM_TRACE_DISABLE))
		return KERN_NOT_SUPPORTED;

	/* look for the requested memory in target task */
	if (!task)
		return KERN_INVALID_TASK;

	FUNC10(task);
	if (task->atm_context){
		task_descriptor = task->atm_context;
		FUNC1(task_descriptor);
	}
	FUNC11(task);

	if (task_descriptor == ATM_TASK_DESCRIPTOR_NULL){
		return KERN_FAILURE;
	}

	memory_port = FUNC8(task_descriptor->trace_buffer);
	buffer_size =  task_descriptor->trace_buffer_size;
	FUNC4(task_descriptor);

	/* get the communication port */
	error = FUNC6(FUNC7(), &user_port);
	if ((error != KERN_SUCCESS) || !FUNC0(user_port)) {
		FUNC9(memory_port);
		return KERN_FAILURE;
	}

	FUNC13(th);
	kr =  FUNC3(user_port, traced_pid, traced_uniqueid, buffer_size, memory_port);
	FUNC12(th);

	if (kr != KERN_SUCCESS) {
		FUNC9(user_port);

		if (kr == MACH_SEND_TIMED_OUT) {
			kr = KERN_SUCCESS;
		}
	}

	FUNC9(memory_port);
	return kr;
}