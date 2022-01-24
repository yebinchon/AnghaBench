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
typedef  int /*<<< orphan*/  vm_machine_attribute_val_t ;
typedef  int /*<<< orphan*/  vm_machine_attribute_t ;
typedef  scalar_t__ vm_address_t ;
typedef  int /*<<< orphan*/  kern_return_t ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_INVALID_ARGUMENT ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 scalar_t__ VM_MAP_NULL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 

kern_return_t
FUNC4(
	vm_map_t	map,
	vm_address_t	addr,
	vm_size_t	size,
	vm_machine_attribute_t	attribute,
	vm_machine_attribute_val_t* value)		/* IN/OUT */
{
	if ((map == VM_MAP_NULL) || (addr + size < addr))
		return(KERN_INVALID_ARGUMENT);

	if (size == 0)
		return KERN_SUCCESS;

	return FUNC1(
		map, 
		FUNC3(addr,
				  FUNC0(map)),
		FUNC2(addr+size,
				  FUNC0(map)),
		attribute,
		value);
}