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
typedef  scalar_t__ vm_size_t ;
typedef  scalar_t__ vm_offset_t ;
typedef  int /*<<< orphan*/  vm_map_size_t ;
typedef  scalar_t__ vm_map_copy_t ;
typedef  int /*<<< orphan*/  vm_map_address_t ;
typedef  int /*<<< orphan*/  mach_port_type_t ;
typedef  int /*<<< orphan*/  mach_port_name_t ;
typedef  int mach_port_index_t ;
typedef  int mach_msg_type_number_t ;
typedef  scalar_t__ kern_return_t ;
typedef  TYPE_1__* ipc_space_t ;
typedef  int /*<<< orphan*/  ipc_port_timestamp_t ;
typedef  TYPE_2__* ipc_entry_t ;
typedef  int ipc_entry_num_t ;
typedef  int /*<<< orphan*/  ipc_entry_bits_t ;
struct TYPE_10__ {int /*<<< orphan*/  ie_bits; } ;
struct TYPE_9__ {int is_table_size; TYPE_2__* is_table; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* IS_NULL ; 
 scalar_t__ KERN_INVALID_TASK ; 
 scalar_t__ KERN_RESOURCE_SHORTAGE ; 
 scalar_t__ KERN_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ MACH_PORT_TYPE_NONE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  VM_FLAGS_ANYWHERE ; 
 int /*<<< orphan*/  VM_KERN_MEMORY_IPC ; 
 scalar_t__ VM_MAP_COPY_NULL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int VM_PROT_READ ; 
 int VM_PROT_WRITE ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  ipc_kernel_map ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,scalar_t__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC14 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

kern_return_t
FUNC18(
	ipc_space_t		space,
	mach_port_name_t	**namesp,
	mach_msg_type_number_t	*namesCnt,
	mach_port_type_t	**typesp,
	mach_msg_type_number_t	*typesCnt)
{
	ipc_entry_t table;
	ipc_entry_num_t tsize;
	mach_port_index_t index;
	ipc_entry_num_t actual;	/* this many names */
	ipc_port_timestamp_t timestamp;	/* logical time of this operation */
	mach_port_name_t *names;
	mach_port_type_t *types;
	kern_return_t kr;

	vm_size_t size;		/* size of allocated memory */
	vm_offset_t addr1;	/* allocated memory, for names */
	vm_offset_t addr2;	/* allocated memory, for types */
	vm_map_copy_t memory1;	/* copied-in memory, for names */
	vm_map_copy_t memory2;	/* copied-in memory, for types */

	/* safe simplifying assumption */
	FUNC11(sizeof(mach_port_name_t) == sizeof(mach_port_type_t));

	if (space == IS_NULL)
		return KERN_INVALID_TASK;

	size = 0;

	for (;;) {
		ipc_entry_num_t bound;
		vm_size_t size_needed;

		FUNC7(space);
		if (!FUNC6(space)) {
			FUNC8(space);
			if (size != 0) {
				FUNC9(ipc_kernel_map, addr1, size);
				FUNC9(ipc_kernel_map, addr2, size);
			}
			return KERN_INVALID_TASK;
		}

		/* upper bound on number of names in the space */
		bound = space->is_table_size;
		size_needed = FUNC14(
			(bound * sizeof(mach_port_name_t)),
			FUNC3(ipc_kernel_map));

		if (size_needed <= size)
			break;

		FUNC8(space);

		if (size != 0) {
			FUNC9(ipc_kernel_map, addr1, size);
			FUNC9(ipc_kernel_map, addr2, size);
		}
		size = size_needed;

		kr = FUNC12(ipc_kernel_map, &addr1, size, VM_FLAGS_ANYWHERE, VM_KERN_MEMORY_IPC);
		if (kr != KERN_SUCCESS)
			return KERN_RESOURCE_SHORTAGE;

		kr = FUNC12(ipc_kernel_map, &addr2, size, VM_FLAGS_ANYWHERE, VM_KERN_MEMORY_IPC);
		if (kr != KERN_SUCCESS) {
			FUNC9(ipc_kernel_map, addr1, size);
			return KERN_RESOURCE_SHORTAGE;
		}

		/* can't fault while we hold locks */

		kr = FUNC17(
			ipc_kernel_map,
			FUNC15(addr1,
					  FUNC3(ipc_kernel_map)),
			FUNC14(addr1 + size,
					  FUNC3(ipc_kernel_map)),
			VM_PROT_READ|VM_PROT_WRITE, VM_KERN_MEMORY_IPC,
			FALSE);
		if (kr != KERN_SUCCESS) {
			FUNC9(ipc_kernel_map, addr1, size);
			FUNC9(ipc_kernel_map, addr2, size);
			return KERN_RESOURCE_SHORTAGE;
		}

		kr = FUNC17(
			ipc_kernel_map,
			FUNC15(addr2,
					  FUNC3(ipc_kernel_map)),
			FUNC14(addr2 + size,
					  FUNC3(ipc_kernel_map)),
			VM_PROT_READ|VM_PROT_WRITE,
			VM_KERN_MEMORY_IPC,
			FALSE);
		if (kr != KERN_SUCCESS) {
			FUNC9(ipc_kernel_map, addr1, size);
			FUNC9(ipc_kernel_map, addr2, size);
			return KERN_RESOURCE_SHORTAGE;
		}

	}
	/* space is read-locked and active */

	names = (mach_port_name_t *) addr1;
	types = (mach_port_type_t *) addr2;
	actual = 0;

	timestamp = FUNC5();

	table = space->is_table;
	tsize = space->is_table_size;

	for (index = 0; index < tsize; index++) {
		ipc_entry_t entry = &table[index];
		ipc_entry_bits_t bits = entry->ie_bits;

		if (FUNC1(bits) != MACH_PORT_TYPE_NONE) {
			mach_port_name_t name;

			name = FUNC2(index, FUNC0(bits));
			FUNC10(timestamp, entry, name, names,
					       types, &actual);
		}
	}

	FUNC8(space);

	if (actual == 0) {
		memory1 = VM_MAP_COPY_NULL;
		memory2 = VM_MAP_COPY_NULL;

		if (size != 0) {
			FUNC9(ipc_kernel_map, addr1, size);
			FUNC9(ipc_kernel_map, addr2, size);
		}
	} else {
		vm_size_t size_used;
		vm_size_t vm_size_used;

		size_used = actual * sizeof(mach_port_name_t);
		vm_size_used =
			FUNC14(size_used,
					  FUNC3(ipc_kernel_map));

		/*
		 *	Make used memory pageable and get it into
		 *	copied-in form.  Free any unused memory.
		 */

		kr = FUNC16(
			ipc_kernel_map,
			FUNC15(addr1,
					  FUNC3(ipc_kernel_map)),
			FUNC14(addr1 + vm_size_used,
					  FUNC3(ipc_kernel_map)),
			FALSE);
		FUNC4(kr == KERN_SUCCESS);

		kr = FUNC16(
			ipc_kernel_map,
			FUNC15(addr2,
					  FUNC3(ipc_kernel_map)),
			FUNC14(addr2 + vm_size_used,
					  FUNC3(ipc_kernel_map)),
			FALSE);
		FUNC4(kr == KERN_SUCCESS);

		kr = FUNC13(ipc_kernel_map, (vm_map_address_t)addr1,
				   (vm_map_size_t)size_used, TRUE, &memory1);
		FUNC4(kr == KERN_SUCCESS);

		kr = FUNC13(ipc_kernel_map, (vm_map_address_t)addr2,
				   (vm_map_size_t)size_used, TRUE, &memory2);
		FUNC4(kr == KERN_SUCCESS);

		if (vm_size_used != size) {
			FUNC9(ipc_kernel_map,
				  addr1 + vm_size_used, size - vm_size_used);
			FUNC9(ipc_kernel_map,
				  addr2 + vm_size_used, size - vm_size_used);
		}
	}

	*namesp = (mach_port_name_t *) memory1;
	*namesCnt = actual;
	*typesp = (mach_port_type_t *) memory2;
	*typesCnt = actual;
	return KERN_SUCCESS;
}