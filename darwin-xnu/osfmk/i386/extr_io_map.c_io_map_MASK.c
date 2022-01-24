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
typedef  int /*<<< orphan*/  vm_size_t ;
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  scalar_t__ vm_map_offset_t ;

/* Variables and functions */
 int /*<<< orphan*/  VM_KERN_MEMORY_IOKIT ; 
 scalar_t__ VM_MAP_NULL ; 
 int VM_PROT_READ ; 
 int VM_PROT_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ kernel_map ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int,unsigned int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  virtual_avail ; 

vm_offset_t
FUNC5(vm_map_offset_t phys_addr, vm_size_t size, unsigned int flags)
{
	vm_offset_t	start;

	if (kernel_map == VM_MAP_NULL) {
	    /*
	     * VM is not initialized.  Grab memory.
	     */
	    start = virtual_avail;
	    virtual_avail += FUNC4(size);

#if KASAN
	    kasan_notify_address(start, size);
#endif
	    (void) FUNC3(start, phys_addr, phys_addr + FUNC4(size),
			       VM_PROT_READ|VM_PROT_WRITE,
			       flags);
	}
	else {
	    (void) FUNC1(kernel_map, &start, FUNC4(size), VM_KERN_MEMORY_IOKIT);
	    (void) FUNC2(start, phys_addr, phys_addr + FUNC4(size),
			    VM_PROT_READ|VM_PROT_WRITE,
			    flags);
	}
	return (start);
}