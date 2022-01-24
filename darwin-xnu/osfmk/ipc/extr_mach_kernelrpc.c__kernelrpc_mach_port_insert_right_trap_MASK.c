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
struct _kernelrpc_mach_port_insert_right_args {int /*<<< orphan*/  name; int /*<<< orphan*/  polyPoly; int /*<<< orphan*/  poly; int /*<<< orphan*/  target; } ;
typedef  int /*<<< orphan*/  mach_msg_type_name_t ;
typedef  scalar_t__ ipc_port_t ;
typedef  int /*<<< orphan*/  ipc_object_t ;
struct TYPE_5__ {int /*<<< orphan*/  itk_space; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int KERN_SUCCESS ; 
 int MACH_SEND_INVALID_DEST ; 
 TYPE_1__* FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

int
FUNC8(struct _kernelrpc_mach_port_insert_right_args *args)
{
	task_t task = FUNC6(args->target);
	ipc_port_t port;
	mach_msg_type_name_t disp;
	int rv = MACH_SEND_INVALID_DEST;

	if (task != FUNC1())
		goto done;

	rv = FUNC2(task->itk_space, args->poly, args->polyPoly,
	    (ipc_object_t *)&port);
	if (rv != KERN_SUCCESS)
		goto done;
	disp = FUNC3(args->polyPoly);

	rv = FUNC5(task->itk_space, args->name, port, disp);
	if (rv != KERN_SUCCESS) {
		if (FUNC0((ipc_object_t)port)) {
			FUNC4((ipc_object_t)port, disp);
		}
	}
	
done:
	if (task)
		FUNC7(task);
	return (rv);
}