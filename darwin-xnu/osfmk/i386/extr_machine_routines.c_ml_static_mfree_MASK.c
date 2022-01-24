#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_size_t ;
typedef  scalar_t__ vm_offset_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ ppnum_t ;
typedef  int addr64_t ;
struct TYPE_5__ {scalar_t__ resident_count; scalar_t__ resident_max; } ;
struct TYPE_6__ {TYPE_1__ stats; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int PAGE_SIZE ; 
 scalar_t__ VM_MIN_KERNEL_ADDRESS ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_2__* kernel_pmap ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__,void*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int,int) ; 
 int FUNC5 (scalar_t__) ; 
 int FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  vm_page_wire_count ; 
 int /*<<< orphan*/  vm_page_wire_count_initial ; 

void
FUNC10(
	vm_offset_t vaddr,
	vm_size_t size)
{
	addr64_t vaddr_cur;
	ppnum_t ppn;
	uint32_t freed_pages = 0;
	FUNC1(vaddr >= VM_MIN_KERNEL_ADDRESS);

	FUNC1((vaddr & (PAGE_SIZE-1)) == 0); /* must be page aligned */

	for (vaddr_cur = vaddr;
 	     vaddr_cur < FUNC6(vaddr+size);
	     vaddr_cur += PAGE_SIZE) {
		ppn = FUNC3(kernel_pmap, vaddr_cur);
		if (ppn != (vm_offset_t)NULL) {
		        kernel_pmap->stats.resident_count++;
			if (kernel_pmap->stats.resident_count >
			    kernel_pmap->stats.resident_max) {
				kernel_pmap->stats.resident_max =
					kernel_pmap->stats.resident_count;
			}
			FUNC4(kernel_pmap, vaddr_cur, vaddr_cur+PAGE_SIZE);
			FUNC1(FUNC5(ppn));
			if (FUNC0(ppn)) {
				FUNC7(ppn,(ppn+1));
				freed_pages++;
			}
		}
	}
	FUNC8();
	vm_page_wire_count -= freed_pages;
	vm_page_wire_count_initial -= freed_pages;
	FUNC9();

#if	DEBUG	
	kprintf("ml_static_mfree: Released 0x%x pages at VA %p, size:0x%llx, last ppn: 0x%x\n", freed_pages, (void *)vaddr, (uint64_t)size, ppn);
#endif
}