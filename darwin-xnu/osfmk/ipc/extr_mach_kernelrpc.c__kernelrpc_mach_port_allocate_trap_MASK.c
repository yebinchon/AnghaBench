#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* task_t ;
struct _kernelrpc_mach_port_allocate_args {int /*<<< orphan*/  name; int /*<<< orphan*/  right; int /*<<< orphan*/  target; } ;
typedef  int /*<<< orphan*/  name ;
typedef  int /*<<< orphan*/  mach_port_name_t ;
struct TYPE_5__ {int /*<<< orphan*/  itk_space; } ;

/* Variables and functions */
 int KERN_SUCCESS ; 
 int MACH_SEND_INVALID_DEST ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

int
FUNC5(struct _kernelrpc_mach_port_allocate_args *args)
{
	task_t task = FUNC3(args->target);
	mach_port_name_t name;
	int rv = MACH_SEND_INVALID_DEST;

	if (task != FUNC1())
		goto done;

	rv = FUNC2(task->itk_space, args->right, &name);
	if (rv == KERN_SUCCESS)
		rv = FUNC0(&name, args->name, sizeof (name));

	
done:
	if (task)
		FUNC4(task);
	return (rv);
}