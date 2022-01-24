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
typedef  scalar_t__ vm_offset_t ;
typedef  int /*<<< orphan*/  vm_map_size_t ;
typedef  int /*<<< orphan*/  vm_map_copy_t ;
typedef  int /*<<< orphan*/  vm_map_address_t ;
typedef  scalar_t__ kern_return_t ;

/* Variables and functions */
 scalar_t__ KERN_SUCCESS ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 int /*<<< orphan*/  ipc_kernel_map ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

vm_map_copy_t
FUNC5(
	vm_offset_t		start_addr,
	vm_size_t		total_size,
	vm_size_t		used_size)
{
	kern_return_t	kr;
	vm_offset_t		end_addr;
	vm_size_t		free_size;
	vm_map_copy_t	copy;

	if (used_size != total_size) {
		end_addr = start_addr + used_size;
		free_size = total_size - (FUNC3(end_addr) - start_addr);

		if (free_size >= PAGE_SIZE) {
			FUNC2(ipc_kernel_map,
					FUNC3(end_addr), free_size);
		}
		FUNC1((char *) end_addr, FUNC3(end_addr) - end_addr);
	}

	kr = FUNC4(ipc_kernel_map, (vm_map_address_t)start_addr,
			   (vm_map_size_t)used_size, TRUE, &copy);
	FUNC0(kr == KERN_SUCCESS);

	return copy;
}