#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int vm_size_t ;
typedef  int vm_prot_t ;
typedef  int vm_offset_t ;
typedef  int tt_entry_t ;
typedef  int pt_entry_t ;
typedef  int ppnum_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
struct TYPE_3__ {int* tte; } ;

/* Variables and functions */
 int /*<<< orphan*/  AP_RONA ; 
 int /*<<< orphan*/  AP_RWNA ; 
 int ARM_PGBYTES ; 
 int ARM_PGMASK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int ARM_PTE_APMASK ; 
 int ARM_PTE_NX ; 
 int ARM_PTE_NX_MASK ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int ARM_TTE_BLOCK_APMASK ; 
 int ARM_TTE_BLOCK_NX ; 
 int ARM_TTE_BLOCK_NX_MASK ; 
 int ARM_TTE_TYPE_BLOCK ; 
 int ARM_TTE_TYPE_MASK ; 
 int ARM_TTE_TYPE_TABLE ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  KERN_FAILURE ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int VM_MIN_KERNEL_ADDRESS ; 
 int VM_PROT_EXECUTE ; 
 int VM_PROT_WRITE ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 TYPE_1__* kernel_pmap ; 
 int /*<<< orphan*/  FUNC5 (char*,void*) ; 
 int FUNC6 (TYPE_1__*,int) ; 
 int FUNC7 (int) ; 
 size_t FUNC8 (int) ; 
 scalar_t__ FUNC9 (int) ; 

kern_return_t
FUNC10(
	vm_offset_t vaddr, /* kernel virtual address */
	vm_size_t size,
	vm_prot_t new_prot)
{
	pt_entry_t    arm_prot = 0;
	pt_entry_t    arm_block_prot = 0;
	vm_offset_t   vaddr_cur;
	ppnum_t       ppn;
	kern_return_t result = KERN_SUCCESS;

	if (vaddr < VM_MIN_KERNEL_ADDRESS)
		return KERN_FAILURE;

	FUNC3((vaddr & (ARM_PGBYTES - 1)) == 0); /* must be page aligned */

	if ((new_prot & VM_PROT_WRITE) && (new_prot & VM_PROT_EXECUTE)) {
		FUNC5("ml_static_protect(): WX request on %p", (void *) vaddr);
	}

	/* Set up the protection bits, and block bits so we can validate block mappings. */
	if (new_prot & VM_PROT_WRITE) {
		arm_prot |= FUNC0(AP_RWNA);
		arm_block_prot |= FUNC1(AP_RWNA);
	} else {
		arm_prot |= FUNC0(AP_RONA);
		arm_block_prot |= FUNC1(AP_RONA);
	}

	if (!(new_prot & VM_PROT_EXECUTE)) {
		arm_prot |= ARM_PTE_NX;
		arm_block_prot |= ARM_TTE_BLOCK_NX;
	}

	for (vaddr_cur = vaddr;
	     vaddr_cur < ((vaddr + size) & ~ARM_PGMASK);
	     vaddr_cur += ARM_PGBYTES) {
		ppn = FUNC6(kernel_pmap, vaddr_cur);
		if (ppn != (vm_offset_t) NULL) {
			tt_entry_t     *ttp = &kernel_pmap->tte[FUNC8(vaddr_cur)];
			tt_entry_t      tte = *ttp;

			if ((tte & ARM_TTE_TYPE_MASK) != ARM_TTE_TYPE_TABLE) {
				if (((tte & ARM_TTE_TYPE_MASK) == ARM_TTE_TYPE_BLOCK) &&
				    ((tte & (ARM_TTE_BLOCK_APMASK | ARM_TTE_BLOCK_NX_MASK)) == arm_block_prot)) {
					/*
					 * We can support ml_static_protect on a block mapping if the mapping already has
					 * the desired protections.  We still want to run checks on a per-page basis.
					 */
					continue;
				}

				result = KERN_FAILURE;
				break;
			}

			pt_entry_t *pte_p = (pt_entry_t *) FUNC9(tte) + FUNC7(vaddr_cur);
			pt_entry_t ptmp = *pte_p;

			ptmp = (ptmp & ~(ARM_PTE_APMASK | ARM_PTE_NX_MASK)) | arm_prot;
			*pte_p = ptmp;
#ifndef  __ARM_L1_PTW__
			FUNC2((vm_offset_t) pte_p, sizeof(*pte_p));
#endif
		}
	}

	if (vaddr_cur > vaddr)
		FUNC4(vaddr, (vm_size_t)(vaddr_cur - vaddr));

	return result;
}