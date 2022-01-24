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
typedef  int vm_size_t ;
typedef  int vm_offset_t ;
typedef  int /*<<< orphan*/  vm_map_size_t ;
typedef  scalar_t__ vm_map_copy_t ;
typedef  int /*<<< orphan*/  vm_map_address_t ;
typedef  int /*<<< orphan*/  mach_port_name_t ;
typedef  int mach_msg_type_number_t ;
typedef  scalar_t__ kern_return_t ;
typedef  scalar_t__ ipc_space_t ;
typedef  TYPE_1__* ipc_pset_t ;
typedef  scalar_t__ ipc_object_t ;
typedef  int ipc_entry_num_t ;
struct TYPE_6__ {int /*<<< orphan*/  ips_messages; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ IS_NULL ; 
 scalar_t__ KERN_INVALID_RIGHT ; 
 scalar_t__ KERN_INVALID_TASK ; 
 scalar_t__ KERN_RESOURCE_SHORTAGE ; 
 scalar_t__ KERN_SUCCESS ; 
 int /*<<< orphan*/  MACH_PORT_RIGHT_PORT_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  VM_FLAGS_ANYWHERE ; 
 int /*<<< orphan*/  VM_KERN_MEMORY_IPC ; 
 scalar_t__ VM_MAP_COPY_NULL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int VM_PROT_READ ; 
 int VM_PROT_WRITE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  ipc_kernel_map ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC6 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC13 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

kern_return_t
FUNC17(
	ipc_space_t			space,
	mach_port_name_t		name,
	mach_port_name_t		**members,
	mach_msg_type_number_t		*membersCnt)
{
	ipc_entry_num_t actual;		/* this many members */
	ipc_entry_num_t maxnames;	/* space for this many members */
	kern_return_t kr;

	vm_size_t size;		/* size of allocated memory */
	vm_offset_t addr;	/* allocated memory */
	vm_map_copy_t memory;	/* copied-in memory */

	if (space == IS_NULL)
		return KERN_INVALID_TASK;

	if (!FUNC0(name))
		return KERN_INVALID_RIGHT;

	size = FUNC2(ipc_kernel_map);	/* initial guess */

	for (;;) {
		mach_port_name_t *names;
		ipc_object_t psobj;
		ipc_pset_t pset;

		kr = FUNC11(ipc_kernel_map, &addr, size, VM_FLAGS_ANYWHERE, VM_KERN_MEMORY_IPC);
		if (kr != KERN_SUCCESS)
			return KERN_RESOURCE_SHORTAGE;

		/* can't fault while we hold locks */

		kr = FUNC16(ipc_kernel_map, addr, addr + size,
				     VM_PROT_READ|VM_PROT_WRITE, VM_KERN_MEMORY_IPC, FALSE);
		FUNC4(kr == KERN_SUCCESS);

		kr = FUNC6(space, name, MACH_PORT_RIGHT_PORT_SET, &psobj);
		if (kr != KERN_SUCCESS) {
			FUNC10(ipc_kernel_map, addr, size);
			return kr;
		}

		/* just use a portset reference from here on out */
		FUNC3(pset = (ipc_pset_t) psobj);
		FUNC7(pset);
		FUNC9(pset); 

		names = (mach_port_name_t *) addr;
		maxnames = (ipc_entry_num_t)(size / sizeof(mach_port_name_t));

		FUNC5(space, &pset->ips_messages, maxnames, names, &actual);

		/* release the portset reference */
		FUNC8(pset);

		if (actual <= maxnames)
			break;

		/* didn't have enough memory; allocate more */
		FUNC10(ipc_kernel_map, addr, size);
		size = FUNC13(
			(actual * sizeof(mach_port_name_t)),
			 FUNC1(ipc_kernel_map)) +
			FUNC2(ipc_kernel_map);
	}

	if (actual == 0) {
		memory = VM_MAP_COPY_NULL;

		FUNC10(ipc_kernel_map, addr, size);
	} else {
		vm_size_t size_used;
		vm_size_t vm_size_used;

		size_used = actual * sizeof(mach_port_name_t);
		vm_size_used = FUNC13(
			size_used,
			FUNC1(ipc_kernel_map));

		/*
		 *	Make used memory pageable and get it into
		 *	copied-in form.  Free any unused memory.
		 */

		kr = FUNC15(
			ipc_kernel_map,
			FUNC14(addr,
					  FUNC1(ipc_kernel_map)), 
			FUNC13(addr + vm_size_used,
					  FUNC1(ipc_kernel_map)),
			FALSE);
		FUNC4(kr == KERN_SUCCESS);

		kr = FUNC12(ipc_kernel_map, (vm_map_address_t)addr,
				   (vm_map_size_t)size_used, TRUE, &memory);
		FUNC4(kr == KERN_SUCCESS);

		if (vm_size_used != size)
			FUNC10(ipc_kernel_map,
				  addr + vm_size_used, size - vm_size_used);
	}

	*members = (mach_port_name_t *) memory;
	*membersCnt = actual;
	return KERN_SUCCESS;
}