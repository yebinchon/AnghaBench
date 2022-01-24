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
struct _kernelrpc_mach_vm_protect_args {int /*<<< orphan*/  new_protection; int /*<<< orphan*/  set_maximum; int /*<<< orphan*/  size; int /*<<< orphan*/  address; int /*<<< orphan*/  target; } ;
struct TYPE_5__ {int /*<<< orphan*/  map; } ;

/* Variables and functions */
 int MACH_SEND_INVALID_DEST ; 
 TYPE_1__* FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

int
FUNC4(struct _kernelrpc_mach_vm_protect_args *args)
{
	task_t task = FUNC2(args->target);
	int rv = MACH_SEND_INVALID_DEST;

	if (task != FUNC0())
		goto done;

	rv = FUNC1(task->map, args->address, args->size,
	    args->set_maximum, args->new_protection);
	
done:
	if (task)
		FUNC3(task);
	return (rv);
}