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
typedef  TYPE_1__* task_inspect_t ;
typedef  int /*<<< orphan*/  ipc_space_t ;
typedef  scalar_t__ ipc_space_inspect_t ;
typedef  int /*<<< orphan*/  ipc_port_t ;
struct TYPE_6__ {scalar_t__ itk_space; int /*<<< orphan*/  active; } ;

/* Variables and functions */
 scalar_t__ IPC_SPACE_INSPECT_NULL ; 
 TYPE_1__* TASK_INSPECT_NULL ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

ipc_space_inspect_t
FUNC3(
	ipc_port_t	port)
{
	ipc_space_inspect_t space;
	task_inspect_t task;

	task = FUNC0(port);

	if (task == TASK_INSPECT_NULL)
		return IPC_SPACE_INSPECT_NULL;

	if (!task->active) {
		FUNC2(task);
		return IPC_SPACE_INSPECT_NULL;
	}

	space = (ipc_space_inspect_t)task->itk_space;
	FUNC1((ipc_space_t)space);
	FUNC2((task_t)task);
	return space;
}