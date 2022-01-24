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
typedef  scalar_t__ vm_map_t ;
typedef  int /*<<< orphan*/  vm_map_offset_t ;
typedef  int /*<<< orphan*/  vm_behavior_t ;
typedef  scalar_t__ mach_vm_size_t ;
typedef  scalar_t__ mach_vm_offset_t ;
typedef  int /*<<< orphan*/  kern_return_t ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_INVALID_ARGUMENT ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int /*<<< orphan*/  PAGE_MASK ; 
#define  VM_BEHAVIOR_CAN_REUSE 130 
#define  VM_BEHAVIOR_REUSABLE 129 
#define  VM_BEHAVIOR_REUSE 128 
 scalar_t__ VM_MAP_NULL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 

kern_return_t 
FUNC4(
	vm_map_t		map,
	mach_vm_offset_t	start,
	mach_vm_size_t		size,
	vm_behavior_t		new_behavior)
{
	vm_map_offset_t	align_mask;

	if ((map == VM_MAP_NULL) || (start + size < start))
		return(KERN_INVALID_ARGUMENT);

	if (size == 0)
		return KERN_SUCCESS;

	switch (new_behavior) {
	case VM_BEHAVIOR_REUSABLE:
	case VM_BEHAVIOR_REUSE:
	case VM_BEHAVIOR_CAN_REUSE:
		/*
		 * Align to the hardware page size, to allow
		 * malloc() to maximize the amount of re-usability,
		 * even on systems with larger software page size.
		 */
		align_mask = PAGE_MASK;
		break;
	default:
		align_mask = FUNC0(map);
		break;
	}

	return FUNC1(map,
				   FUNC3(start, align_mask),
				   FUNC2(start+size, align_mask),
				   new_behavior);
}