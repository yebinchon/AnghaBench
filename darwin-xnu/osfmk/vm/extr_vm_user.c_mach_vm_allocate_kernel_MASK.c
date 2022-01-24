#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  vm_tag_t ;
typedef  int /*<<< orphan*/  vm_object_offset_t ;
typedef  scalar_t__ vm_map_t ;
typedef  scalar_t__ vm_map_size_t ;
typedef  scalar_t__ vm_map_offset_t ;
typedef  scalar_t__ mach_vm_size_t ;
typedef  scalar_t__ mach_vm_offset_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
typedef  int boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  KERN_INVALID_ARGUMENT ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int VM_FLAGS_ANYWHERE ; 
 int VM_FLAGS_USER_ALLOCATE ; 
 int /*<<< orphan*/  VM_INHERIT_DEFAULT ; 
 int /*<<< orphan*/  VM_MAP_KERNEL_FLAGS_NONE ; 
 scalar_t__ VM_MAP_NULL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  VM_OBJECT_NULL ; 
 int /*<<< orphan*/  VM_PROT_ALL ; 
 int /*<<< orphan*/  VM_PROT_DEFAULT ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__*,scalar_t__,scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 

kern_return_t
FUNC6(
	vm_map_t		map,
	mach_vm_offset_t	*addr,
	mach_vm_size_t	size,
	int			flags,
	vm_tag_t    tag)
{
	vm_map_offset_t map_addr;
	vm_map_size_t	map_size;
	kern_return_t	result;
	boolean_t	anywhere;

	/* filter out any kernel-only flags */
	if (flags & ~VM_FLAGS_USER_ALLOCATE)
		return KERN_INVALID_ARGUMENT;

	if (map == VM_MAP_NULL)
		return(KERN_INVALID_ARGUMENT);
	if (size == 0) {
		*addr = 0;
		return(KERN_SUCCESS);
	}

	anywhere = ((VM_FLAGS_ANYWHERE & flags) != 0);
	if (anywhere) {
		/*
		 * No specific address requested, so start candidate address
		 * search at the minimum address in the map.  However, if that
		 * minimum is 0, bump it up by PAGE_SIZE.  We want to limit
		 * allocations of PAGEZERO to explicit requests since its
		 * normal use is to catch dereferences of NULL and many
		 * applications also treat pointers with a value of 0 as
		 * special and suddenly having address 0 contain useable
		 * memory would tend to confuse those applications.
		 */
		map_addr = FUNC3(map);
		if (map_addr == 0)
			map_addr += FUNC1(map);
	} else
		map_addr = FUNC5(*addr,
					     FUNC0(map));
	map_size = FUNC4(size,
				     FUNC0(map));
	if (map_size == 0) {
	  return(KERN_INVALID_ARGUMENT);
	}

	result = FUNC2(
			map,
			&map_addr,
			map_size,
			(vm_map_offset_t)0,
			flags,
			VM_MAP_KERNEL_FLAGS_NONE,
			tag,
			VM_OBJECT_NULL,
			(vm_object_offset_t)0,
			FALSE,
			VM_PROT_DEFAULT,
			VM_PROT_ALL,
			VM_INHERIT_DEFAULT);

	*addr = map_addr;
	return(result);
}