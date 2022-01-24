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
struct _kernelrpc_mach_vm_allocate_trap_args {int /*<<< orphan*/  addr; int /*<<< orphan*/  flags; int /*<<< orphan*/  size; int /*<<< orphan*/  target; } ;
typedef  int /*<<< orphan*/  mach_vm_offset_t ;
typedef  int /*<<< orphan*/  addr ;
struct TYPE_5__ {int /*<<< orphan*/  map; } ;

/* Variables and functions */
 int KERN_SUCCESS ; 
 int MACH_SEND_INVALID_DEST ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

int
FUNC6(struct _kernelrpc_mach_vm_allocate_trap_args *args)
{
	mach_vm_offset_t addr;
	task_t task = FUNC4(args->target);
	int rv = MACH_SEND_INVALID_DEST;

	if (task != FUNC2())
		goto done;

	if (FUNC0(args->addr, (char *)&addr, sizeof (addr)))
		goto done;

	rv = FUNC3(task->map, &addr, args->size, args->flags);
	if (rv == KERN_SUCCESS)
		rv = FUNC1(&addr, args->addr, sizeof (addr));
	
done:
	if (task)
		FUNC5(task);
	return (rv);
}