#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_map_copy_t ;
typedef  scalar_t__ vm_map_address_t ;
typedef  int /*<<< orphan*/  vm_address_t ;
typedef  size_t uint_t ;
typedef  TYPE_1__* task_t ;
typedef  int /*<<< orphan*/  mach_port_type_t ;
typedef  int /*<<< orphan*/  mach_port_name_t ;
typedef  size_t mach_msg_type_number_t ;
typedef  scalar_t__ kern_return_t ;
struct TYPE_4__ {int /*<<< orphan*/  itk_space; } ;

/* Variables and functions */
 scalar_t__ KERN_SUCCESS ; 
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int (*) (mach_port_name_t,struct fileglob*,void*),void*,int*) ; 
 int /*<<< orphan*/  ipc_kernel_map ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,size_t*,int /*<<< orphan*/ **,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 

kern_return_t
FUNC5(task_t task,
	int (*action)(mach_port_name_t, struct fileglob *, void *arg),
	void *arg)
{
	mach_port_name_t *names;
	mach_msg_type_number_t ncnt, tcnt;
	vm_map_copy_t map_copy_names, map_copy_types;
	vm_map_address_t map_names;
	kern_return_t kr;
	uint_t i;
	int rval;

	/*
	 * mach_port_names returns the 'name' and 'types' in copied-in
	 * form.  Discard 'types' immediately, then copyout 'names'
	 * back into the kernel before walking the array.
	 */

	kr = FUNC1(task->itk_space,
	    (mach_port_name_t **)&map_copy_names, &ncnt,
	    (mach_port_type_t **)&map_copy_types, &tcnt);
	if (kr != KERN_SUCCESS)
		return (kr);

	FUNC3(map_copy_types);

	kr = FUNC4(ipc_kernel_map, &map_names, map_copy_names);
	if (kr != KERN_SUCCESS) {
		FUNC3(map_copy_names);
		return (kr);
	}
	names = (mach_port_name_t *)(uintptr_t)map_names;

	for (rval = 0, i = 0; i < ncnt; i++)
		if (FUNC0(task, names[i], action, arg,
		    &rval) == KERN_SUCCESS && -1 == rval)
			break;		/* early termination clause */

	FUNC2(ipc_kernel_map,
	    (vm_address_t)names, ncnt * sizeof (*names));
	return (KERN_SUCCESS);
}