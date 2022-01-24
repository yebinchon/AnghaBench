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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ ppnum_t ;

/* Variables and functions */
 scalar_t__ KERN_SUCCESS ; 
 int PAGE_SIZE ; 
 scalar_t__ VM_MIN_KERNEL_ADDRESS ; 
 int VM_PROT_READ ; 
 int VM_PROT_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  kernel_pmap ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,void*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,void*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  vm_page_wire_count ; 
 int /*<<< orphan*/  vm_page_wire_count_initial ; 

void
FUNC9(
		vm_offset_t vaddr,
		vm_size_t size)
{
	vm_offset_t     vaddr_cur;
	ppnum_t         ppn;
	uint32_t freed_pages = 0;

	/* It is acceptable (if bad) to fail to free. */
	if (vaddr < VM_MIN_KERNEL_ADDRESS)
		return;

	FUNC0((vaddr & (PAGE_SIZE - 1)) == 0);	/* must be page aligned */

	for (vaddr_cur = vaddr;
	     vaddr_cur < FUNC5(vaddr + size);
	     vaddr_cur += PAGE_SIZE) {
		ppn = FUNC4(kernel_pmap, vaddr_cur);
		if (ppn != (vm_offset_t) NULL) {
			/*
			 * It is not acceptable to fail to update the protections on a page
			 * we will release to the VM.  We need to either panic or continue.
			 * For now, we'll panic (to help flag if there is memory we can
			 * reclaim).
			 */
			if (FUNC2(vaddr_cur, PAGE_SIZE, VM_PROT_WRITE | VM_PROT_READ) != KERN_SUCCESS) {
				FUNC3("Failed ml_static_mfree on %p", (void *) vaddr_cur);
			}
#if 0
			/*
			 * Must NOT tear down the "V==P" mapping for vaddr_cur as the zone alias scheme
			 * relies on the persistence of these mappings for all time.
			 */
			// pmap_remove(kernel_pmap, (addr64_t) vaddr_cur, (addr64_t) (vaddr_cur + PAGE_SIZE));
#endif
			FUNC6(ppn, (ppn + 1));
			freed_pages++;
		}
	}
	FUNC7();
	vm_page_wire_count -= freed_pages;
	vm_page_wire_count_initial -= freed_pages;
	FUNC8();
#if	DEBUG
	kprintf("ml_static_mfree: Released 0x%x pages at VA %p, size:0x%llx, last ppn: 0x%x\n", freed_pages, (void *)vaddr, (uint64_t)size, ppn);
#endif
}