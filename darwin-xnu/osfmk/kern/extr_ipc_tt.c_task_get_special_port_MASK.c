#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* task_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
typedef  int /*<<< orphan*/  ipc_port_t ;
struct TYPE_6__ {scalar_t__ itk_self; int /*<<< orphan*/  itk_debug_control; int /*<<< orphan*/  itk_task_access; int /*<<< orphan*/  itk_seatbelt; int /*<<< orphan*/  itk_bootstrap; int /*<<< orphan*/  itk_host; int /*<<< orphan*/  itk_nself; int /*<<< orphan*/  itk_sself; } ;

/* Variables and functions */
 scalar_t__ IP_NULL ; 
 int /*<<< orphan*/  KERN_FAILURE ; 
 int /*<<< orphan*/  KERN_INVALID_ARGUMENT ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
#define  TASK_ACCESS_PORT 134 
#define  TASK_BOOTSTRAP_PORT 133 
#define  TASK_DEBUG_CONTROL_PORT 132 
#define  TASK_HOST_PORT 131 
#define  TASK_KERNEL_PORT 130 
#define  TASK_NAME_PORT 129 
 TYPE_1__* TASK_NULL ; 
#define  TASK_SEATBELT_PORT 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

kern_return_t
FUNC4(
	task_t		task,
	int		which,
	ipc_port_t	*portp)
{
	ipc_port_t port;

	if (task == TASK_NULL)
		return KERN_INVALID_ARGUMENT;

	FUNC2(task);
	if (task->itk_self == IP_NULL) {
		FUNC3(task);
		return KERN_FAILURE;
	}

	switch (which) {
	case TASK_KERNEL_PORT:
		port = FUNC0(task->itk_sself);
		break;

	case TASK_NAME_PORT:
		port = FUNC1(task->itk_nself);
		break;

	case TASK_HOST_PORT:
		port = FUNC0(task->itk_host);
		break;

	case TASK_BOOTSTRAP_PORT:
		port = FUNC0(task->itk_bootstrap);
		break;

	case TASK_SEATBELT_PORT:
		port = FUNC0(task->itk_seatbelt);
		break;

	case TASK_ACCESS_PORT:
		port = FUNC0(task->itk_task_access);
		break;

	case TASK_DEBUG_CONTROL_PORT:
		port = FUNC0(task->itk_debug_control);
		break;

	default:
	    FUNC3(task);
		return KERN_INVALID_ARGUMENT;
	}
	FUNC3(task);

	*portp = port;
	return KERN_SUCCESS;
}