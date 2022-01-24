#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int vm_prot_t ;
typedef  int vm_offset_t ;
typedef  scalar_t__ vm_map_address_t ;
typedef  scalar_t__ pv_entry_t ;
typedef  scalar_t__ pt_entry_t ;
typedef  int /*<<< orphan*/  ppnum_t ;
typedef  TYPE_1__* pmap_t ;
typedef  int /*<<< orphan*/  pmap_paddr_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_5__ {scalar_t__ min; scalar_t__ max; } ;

/* Variables and functions */
 int /*<<< orphan*/  AP_RWNA ; 
 int /*<<< orphan*/  AP_RWRW ; 
 scalar_t__ ARM_PTE_AF ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ARM_PTE_APMASK ; 
 scalar_t__ ARM_PTE_EMPTY ; 
 scalar_t__ ARM_PTE_TYPE_FAULT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  ISB_SY ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int PP_ATTR_MODIFIED ; 
 int PP_ATTR_REFERENCED ; 
 scalar_t__* PT_ENTRY_NULL ; 
 scalar_t__* FUNC2 (int /*<<< orphan*/ ) ; 
 int PVH_FLAG_IOMMU ; 
 int /*<<< orphan*/  PVH_TYPE_PTEP ; 
 int /*<<< orphan*/  PVH_TYPE_PVEP ; 
 scalar_t__* PV_ENTRY_NULL ; 
 scalar_t__ TRUE ; 
 int VM_PROT_READ ; 
 int VM_PROT_WRITE ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_1__* kernel_pmap ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__** FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (char*,scalar_t__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC15 (scalar_t__*) ; 
 scalar_t__ FUNC16 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 scalar_t__* FUNC18 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__*) ; 
 scalar_t__* FUNC20 (scalar_t__**) ; 
 scalar_t__* FUNC21 (scalar_t__**) ; 
 scalar_t__ FUNC22 (scalar_t__**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int /*<<< orphan*/  vm_page_fictitious_addr ; 

boolean_t
FUNC24(
	ppnum_t ppnum,
	vm_prot_t fault_type)
{
	pmap_paddr_t    pa = FUNC17(ppnum);
	pv_entry_t     *pve_p;
	pt_entry_t     *pte_p;
	int             pai;
	boolean_t       result;
	boolean_t	tlb_flush_needed = FALSE;
	pv_entry_t    **pv_h;

	FUNC6(ppnum != vm_page_fictitious_addr);

	if (!FUNC10(pa)) {
		return FALSE;	/* Not a managed page. */
	}

	result = FALSE;
	pai = (int)FUNC8(pa);
	FUNC1(pai);
	pv_h = FUNC11(pai);

	pte_p = PT_ENTRY_NULL;
	pve_p = PV_ENTRY_NULL;
	if (FUNC22(pv_h, PVH_TYPE_PTEP))	{
		pte_p = FUNC21(pv_h);
	} else if  (FUNC22(pv_h, PVH_TYPE_PVEP)) {
		pve_p = FUNC20(pv_h);
	}

	while ((pve_p != PV_ENTRY_NULL) || (pte_p != PT_ENTRY_NULL)) {
		vm_map_address_t va;
		pt_entry_t		spte;
		pt_entry_t      tmplate;
		pmap_t          pmap;

		if (pve_p != PV_ENTRY_NULL)
			pte_p = FUNC18(pve_p);

		if (pte_p == PT_ENTRY_NULL) {
			FUNC12("pte_p is NULL: pve_p=%p ppnum=0x%x\n", pve_p, ppnum);
		}
#ifdef PVH_FLAG_IOMMU
		if ((vm_offset_t)pte_p & PVH_FLAG_IOMMU) {
			goto cff_skip_pve;
		} 
#endif
		if (*pte_p == ARM_PTE_EMPTY) {
			FUNC12("pte is NULL: pte_p=%p ppnum=0x%x\n", pte_p, ppnum);
		}

		pmap = FUNC15(pte_p);
		va = FUNC16(pte_p);

		FUNC6(va >= pmap->min && va < pmap->max);

		spte = *pte_p;
		tmplate = spte;

		if ((fault_type & VM_PROT_WRITE) && (FUNC13(spte))) {
			{
				if (pmap == kernel_pmap)
					tmplate = ((spte & ~ARM_PTE_APMASK) | FUNC0(AP_RWNA));
				else
					tmplate = ((spte & ~ARM_PTE_APMASK) | FUNC0(AP_RWRW));
			}

			tmplate |= ARM_PTE_AF;

			FUNC14(tmplate, 0);
			FUNC9(pa, PP_ATTR_REFERENCED | PP_ATTR_MODIFIED);

		} else if ((fault_type & VM_PROT_READ) && ((spte & ARM_PTE_AF) != ARM_PTE_AF)) {
			tmplate = spte | ARM_PTE_AF;

			{
				FUNC9(pa, PP_ATTR_REFERENCED);
			}
		}


		if (spte != tmplate) {
			if (spte != ARM_PTE_TYPE_FAULT) {
				FUNC4(pte_p, tmplate);
				FUNC7(va, PAGE_SIZE, pmap);
				tlb_flush_needed = TRUE;
			} else {
				FUNC3(pte_p, tmplate);
				FUNC5(ISB_SY);
			}
			result = TRUE;
		}

#ifdef PVH_FLAG_IOMMU
	cff_skip_pve:
#endif
		pte_p = PT_ENTRY_NULL;
		if (pve_p != PV_ENTRY_NULL)
			pve_p = FUNC2(FUNC19(pve_p));
	}
	if (tlb_flush_needed)
		FUNC23();
	return result;
}