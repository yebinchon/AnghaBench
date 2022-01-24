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
typedef  int vm_size_t ;
typedef  int vm_offset_t ;
typedef  int vm_map_offset_t ;

/* Variables and functions */
 int PAGE_MASK ; 
 int /*<<< orphan*/  PMAP_MAP_BD_WCOMB ; 
 int /*<<< orphan*/  VM_KERN_MEMORY_IOKIT ; 
 scalar_t__ VM_MAP_NULL ; 
 int VM_PROT_READ ; 
 int VM_PROT_WRITE ; 
 unsigned int VM_WIMG_IO ; 
 unsigned int VM_WIMG_WCOMB ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 scalar_t__ kernel_map ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int,int,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int) ; 
 int virtual_space_start ; 

vm_offset_t
FUNC7(vm_map_offset_t phys_addr, vm_size_t size, unsigned int flags)
{
	vm_offset_t     start, start_offset;

	start_offset = phys_addr & PAGE_MASK;
	size += start_offset;
	phys_addr -= start_offset;

	if (kernel_map == VM_MAP_NULL) {
		/*
	         * VM is not initialized.  Grab memory.
	         */
		start = virtual_space_start;
		virtual_space_start += FUNC6(size);

		FUNC0(flags == VM_WIMG_WCOMB || flags == VM_WIMG_IO);

		if (flags == VM_WIMG_WCOMB) {		
			(void) FUNC5(start, phys_addr, phys_addr + FUNC6(size),
				   VM_PROT_READ | VM_PROT_WRITE, PMAP_MAP_BD_WCOMB);
		} else {
			(void) FUNC4(start, phys_addr, phys_addr + FUNC6(size),
				   VM_PROT_READ | VM_PROT_WRITE);
		}
	} else {
		(void) FUNC2(kernel_map, &start, FUNC6(size), VM_KERN_MEMORY_IOKIT);
		(void) FUNC3(start, phys_addr, phys_addr + FUNC6(size),
				VM_PROT_READ | VM_PROT_WRITE, flags);
	}
#if KASAN
	kasan_notify_address(start + start_offset, size);
#endif
	return (start + start_offset);
}