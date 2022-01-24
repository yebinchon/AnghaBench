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
typedef  scalar_t__ vm_size_t ;
typedef  scalar_t__ vm_map_t ;
typedef  int /*<<< orphan*/  vm_map_size_t ;
typedef  int /*<<< orphan*/  vm_map_copy_t ;
typedef  int /*<<< orphan*/  vm_map_address_t ;
typedef  scalar_t__ vm_address_t ;
typedef  scalar_t__ kern_return_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ KERN_INVALID_ARGUMENT ; 
 scalar_t__ KERN_SUCCESS ; 
 scalar_t__ VM_MAP_NULL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

kern_return_t
FUNC3(
	vm_map_t	map,
	vm_address_t	source_address,
	vm_size_t	size,
	vm_address_t	dest_address)
{
	vm_map_copy_t copy;
	kern_return_t kr;

	if (map == VM_MAP_NULL)
		return KERN_INVALID_ARGUMENT;

	kr = FUNC2(map, (vm_map_address_t)source_address,
			   (vm_map_size_t)size, FALSE, &copy);

	if (KERN_SUCCESS == kr) {
		kr = FUNC1(map,
				(vm_map_address_t)dest_address,
				copy, FALSE /* interruptible XXX */);

		if (KERN_SUCCESS != kr)
			FUNC0(copy);
	}
	return kr;
}