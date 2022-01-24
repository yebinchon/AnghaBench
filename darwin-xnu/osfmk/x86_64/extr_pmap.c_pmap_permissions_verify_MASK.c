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
typedef  int /*<<< orphan*/  vm_region_recurse_info_t ;
typedef  int vm_prot_t ;
typedef  int vm_offset_t ;
typedef  int /*<<< orphan*/  vm_map_t ;
typedef  scalar_t__ uint64_t ;
typedef  scalar_t__ uint32_t ;
struct vm_region_submap_info_64 {int protection; scalar_t__ is_submap; } ;
typedef  int pt_entry_t ;
typedef  int /*<<< orphan*/  ppnum_t ;
typedef  int /*<<< orphan*/  pmap_t ;
typedef  int mach_vm_size_t ;
typedef  int /*<<< orphan*/  mach_vm_address_t ;
typedef  int /*<<< orphan*/  mach_msg_type_number_t ;
typedef  scalar_t__ kern_return_t ;

/* Variables and functions */
 int INTEL_PTE_NX ; 
 int INTEL_PTE_VALID ; 
 int INTEL_PTE_WRITE ; 
 scalar_t__ KERN_FAILURE ; 
 scalar_t__ KERN_SUCCESS ; 
 int NBPD ; 
 int NBPML4 ; 
 int PAGE_MASK_64 ; 
 scalar_t__ PAGE_SIZE ; 
 int PDMASK ; 
 int PML4MASK ; 
 int VM_PROT_EXECUTE ; 
 int VM_PROT_READ ; 
 int VM_PROT_WRITE ; 
 int /*<<< orphan*/  VM_REGION_SUBMAP_INFO_COUNT_64 ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int) ; 
 int* FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 

kern_return_t
FUNC13(pmap_t ipmap, vm_map_t ivmmap, vm_offset_t sv, vm_offset_t ev) {
	vm_offset_t cv = sv;
	kern_return_t rv = KERN_SUCCESS;
	uint64_t skip4 = 0, skip2 = 0;

	FUNC1(!FUNC3(ipmap));

	sv &= ~PAGE_MASK_64;
	ev &= ~PAGE_MASK_64;
	while (cv < ev) {
		if (FUNC0((cv > 0x00007FFFFFFFFFFFULL) &&
			(cv < 0xFFFF800000000000ULL))) {
			cv = 0xFFFF800000000000ULL;
		}
		/* Potential inconsistencies from not holding pmap lock
		 * but harmless for the moment.
		 */
		if (((cv & PML4MASK) == 0) && (FUNC8(ipmap, cv) == 0)) {
			if ((cv + NBPML4) > cv)
				cv += NBPML4;
			else
				break;
			skip4++;
			continue;
		}
		if (((cv & PDMASK) == 0) && (FUNC9(ipmap, cv) == 0)) {
			if ((cv + NBPD) > cv)
				cv += NBPD;
			else
				break;
			skip2++;
			continue;
		}

		pt_entry_t *ptep = FUNC10(ipmap, cv);
		if (ptep && (*ptep & INTEL_PTE_VALID)) {
			if (*ptep & INTEL_PTE_WRITE) {
				if (!(*ptep & INTEL_PTE_NX)) {
					FUNC4("W+X PTE at 0x%lx, P4: 0x%llx, P3: 0x%llx, P2: 0x%llx, PT: 0x%llx, VP: %u\n", cv, *FUNC8(ipmap, cv), *FUNC7(ipmap, cv), *FUNC6(ipmap, cv), *ptep, FUNC11((ppnum_t)(FUNC2(FUNC12(*ptep)))));
					rv = KERN_FAILURE;
				}
			}
		}
		cv += PAGE_SIZE;
	}
	FUNC4("Completed pmap scan\n");
	cv = sv;

	struct vm_region_submap_info_64 vbr;
	mach_msg_type_number_t vbrcount = 0;
	mach_vm_size_t	vmsize;
	vm_prot_t	prot;
	uint32_t nesting_depth = 0;
	kern_return_t kret;
	
	while (cv < ev) {
		
		for (;;) {
			vbrcount = VM_REGION_SUBMAP_INFO_COUNT_64;
			if((kret = FUNC5(ivmmap, 
				    (mach_vm_address_t *) &cv, &vmsize, &nesting_depth, 
					(vm_region_recurse_info_t)&vbr,
					&vbrcount)) != KERN_SUCCESS) {
				break;
			}

			if(vbr.is_submap) {
				nesting_depth++;
				continue;
			} else {
				break;
			}
		}

		if(kret != KERN_SUCCESS)
			break;

		prot = vbr.protection;

		if ((prot & (VM_PROT_WRITE | VM_PROT_EXECUTE)) == (VM_PROT_WRITE | VM_PROT_EXECUTE)) {
			FUNC4("W+X map entry at address 0x%lx\n", cv);
			rv = KERN_FAILURE;
		}

		if (prot) {
			vm_offset_t pcv;
			for (pcv = cv; pcv < cv + vmsize; pcv += PAGE_SIZE) {
				pt_entry_t *ptep = FUNC10(ipmap, pcv);
				vm_prot_t tprot;

				if ((ptep == NULL) || !(*ptep & INTEL_PTE_VALID))
					continue;
				tprot = VM_PROT_READ;
				if (*ptep & INTEL_PTE_WRITE)
					tprot |= VM_PROT_WRITE;
				if ((*ptep & INTEL_PTE_NX) == 0)
					tprot |= VM_PROT_EXECUTE;
				if (tprot != prot) {
					FUNC4("PTE/map entry permissions mismatch at address 0x%lx, pte: 0x%llx, protection: 0x%x\n", pcv, *ptep, prot);
					rv = KERN_FAILURE;
				}
			}
		}
		cv += vmsize;
	}
	return rv;
}