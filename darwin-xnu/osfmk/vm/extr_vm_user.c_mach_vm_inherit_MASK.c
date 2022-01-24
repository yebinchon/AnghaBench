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
typedef  scalar_t__ vm_inherit_t ;
typedef  scalar_t__ mach_vm_size_t ;
typedef  scalar_t__ mach_vm_offset_t ;
typedef  int /*<<< orphan*/  kern_return_t ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_INVALID_ARGUMENT ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 scalar_t__ VM_INHERIT_LAST_VALID ; 
 scalar_t__ VM_MAP_NULL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 

kern_return_t
FUNC4(
	vm_map_t		map,
	mach_vm_offset_t	start,
	mach_vm_size_t	size,
	vm_inherit_t		new_inheritance)
{
	if ((map == VM_MAP_NULL) || (start + size < start) ||
	    (new_inheritance > VM_INHERIT_LAST_VALID))
                return(KERN_INVALID_ARGUMENT);

	if (size == 0)
		return KERN_SUCCESS;

	return(FUNC1(map,
			      FUNC3(start,
						FUNC0(map)),
			      FUNC2(start+size,
						FUNC0(map)),
			      new_inheritance));
}