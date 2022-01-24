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
typedef  TYPE_1__* task_t ;
typedef  struct fileglob fileglob ;
typedef  int /*<<< orphan*/  mach_port_name_t ;
typedef  scalar_t__ kern_return_t ;
typedef  int /*<<< orphan*/  ipc_port_t ;
typedef  int /*<<< orphan*/  ipc_object_t ;
struct TYPE_3__ {int /*<<< orphan*/  itk_space; } ;

/* Variables and functions */
 scalar_t__ KERN_FAILURE ; 
 scalar_t__ KERN_SUCCESS ; 
 int /*<<< orphan*/  MACH_MSG_TYPE_COPY_SEND ; 
 struct fileglob* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct fileglob*,void*) ; 

kern_return_t
FUNC4(task_t task, mach_port_name_t name,
	int (*action)(mach_port_name_t, struct fileglob *, void *),
	void *arg, int *rval)
{
	kern_return_t kr;
	ipc_port_t fileport;
	struct fileglob *fg;

	kr = FUNC1(task->itk_space, name,
	    MACH_MSG_TYPE_COPY_SEND, (ipc_object_t *)&fileport);
	if (kr != KERN_SUCCESS)
		return (kr);

	if ((fg = FUNC0(fileport)) != NULL)
		*rval = (*action)(name, fg, arg);
	else
		kr = KERN_FAILURE;
	FUNC2(fileport);
	return (kr);
}