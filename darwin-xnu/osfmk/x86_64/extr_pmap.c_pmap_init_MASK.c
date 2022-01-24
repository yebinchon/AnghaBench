#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int vm_size_t ;
typedef  scalar_t__ vm_offset_t ;
typedef  int vm_object_size_t ;
typedef  scalar_t__ vm_map_offset_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  scalar_t__ uint32_t ;
struct pv_rooted_entry {int dummy; } ;
struct pv_hashed_entry_t {int dummy; } ;
struct pv_hashed_entry {int dummy; } ;
struct pmap {int dummy; } ;
typedef  TYPE_1__* pv_rooted_entry_t ;
typedef  int /*<<< orphan*/  pv_hashed_entry_t ;
typedef  size_t ppnum_t ;
struct TYPE_10__ {scalar_t__ type; size_t base; size_t end; } ;
typedef  TYPE_2__ pmap_memory_region_t ;
struct TYPE_11__ {int /*<<< orphan*/ * pm_obj; int /*<<< orphan*/ * pm_obj_pdpt; int /*<<< orphan*/ * pm_obj_pml4; } ;
struct TYPE_9__ {int /*<<< orphan*/  qlink; TYPE_5__* pmap; scalar_t__ va_and_flags; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int HV_VMX_EPTP_ENABLE_AD_FLAGS ; 
 int HV_VMX_EPTP_MEMORY_TYPE_WB ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  KERNEL_BASEMENT ; 
 scalar_t__ KERN_SUCCESS ; 
 int KMA_KOBJECT ; 
 int KMA_PERMANENT ; 
 scalar_t__ MAX_PREEMPTION_LATENCY_NS ; 
 int /*<<< orphan*/  MSR_IA32_VMX_EPT_VPID_CAP ; 
 int /*<<< orphan*/  MSR_IA32_VMX_EPT_VPID_CAP_AD_SHIFT ; 
 scalar_t__ NPDEPGS ; 
 scalar_t__ NPDPTPGS ; 
 scalar_t__ NPML4PGS ; 
 int PAGE_SIZE ; 
 char PHYS_MANAGED ; 
 char PHYS_NOENCRYPT ; 
 int /*<<< orphan*/  PMAP_EXPAND_OPTIONS_NONE ; 
 scalar_t__ TRUE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  VM_KERN_MEMORY_PMAP ; 
 scalar_t__ VM_MIN_KERNEL_ADDRESS ; 
 size_t VM_MIN_KERNEL_PAGE ; 
 int /*<<< orphan*/  Z_ALIGNMENT_REQUIRED ; 
 int /*<<< orphan*/  Z_GZALLOC_EXEMPT ; 
 int /*<<< orphan*/  Z_NOENCRYPT ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  avail_end ; 
 int /*<<< orphan*/  avail_start ; 
 size_t highest_hi ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ kEfiConventionalMemory ; 
 int /*<<< orphan*/  kernel_map ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 TYPE_5__* kernel_pmap ; 
 int /*<<< orphan*/  kpdptobj_object_store ; 
 int /*<<< orphan*/  kpml4obj_object_store ; 
 int /*<<< orphan*/  kptobj_object_store ; 
 size_t last_managed_page ; 
 size_t lowest_hi ; 
 int /*<<< orphan*/  max_preemption_latency_tsc ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int) ; 
 int npvhashbuckets ; 
 scalar_t__ npvhashmask ; 
 TYPE_1__* FUNC6 (size_t) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  pmap_anchor_zone ; 
 int pmap_ept_support_ad ; 
 int pmap_eptp_flags ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC9 (TYPE_5__*,scalar_t__) ; 
 scalar_t__ pmap_initialized ; 
 unsigned int pmap_memory_region_count ; 
 TYPE_2__* pmap_memory_regions ; 
 scalar_t__ pmap_npages ; 
 char* pmap_phys_attributes ; 
 int /*<<< orphan*/  pmap_uanchor_zone ; 
 int /*<<< orphan*/  pmap_zone ; 
 char* pv_hash_lock_table ; 
 int FUNC10 (int) ; 
 int /*<<< orphan*/ * pv_hash_table ; 
 int /*<<< orphan*/  pv_hashed_list_zone ; 
 TYPE_1__* pv_head_table ; 
 char* pv_lock_table ; 
 int FUNC11 (long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int) ; 
 int task_max ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tscFCvtn2t ; 
 scalar_t__ FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int,int,int,char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

void
FUNC18(void)
{
	long			npages;
	vm_offset_t		addr;
	vm_size_t		s, vsize;
	vm_map_offset_t		vaddr;
	ppnum_t ppn;


	kernel_pmap->pm_obj_pml4 = &kpml4obj_object_store;
	FUNC2((vm_object_size_t)NPML4PGS * PAGE_SIZE, &kpml4obj_object_store);

	kernel_pmap->pm_obj_pdpt = &kpdptobj_object_store;
	FUNC2((vm_object_size_t)NPDPTPGS * PAGE_SIZE, &kpdptobj_object_store);

	kernel_pmap->pm_obj = &kptobj_object_store;
	FUNC2((vm_object_size_t)NPDEPGS * PAGE_SIZE, &kptobj_object_store);

	/*
	 *	Allocate memory for the pv_head_table and its lock bits,
	 *	the modify bit array, and the pte_page table.
	 */

	/*
	 * zero bias all these arrays now instead of off avail_start
	 * so we cover all memory
	 */

	npages = FUNC3(avail_end);
#if HIBERNATION
	pmap_npages = (uint32_t)npages;
#endif	
	s = (vm_size_t) (sizeof(struct pv_rooted_entry) * npages
			 + (sizeof (struct pv_hashed_entry_t *) * (npvhashbuckets))
			 + FUNC11(npages)
			 + FUNC10((npvhashbuckets))
				+ npages);
	s = FUNC13(s);
	if (FUNC4(kernel_map, &addr, s, 0,
				   KMA_KOBJECT | KMA_PERMANENT, VM_KERN_MEMORY_PMAP)
	    != KERN_SUCCESS)
		FUNC7("pmap_init");

	FUNC5((char *)addr, 0, s);

	vaddr = addr;
	vsize = s;

#if PV_DEBUG
	if (0 == npvhashmask) panic("npvhashmask not initialized");
#endif

	/*
	 *	Allocate the structures first to preserve word-alignment.
	 */
	pv_head_table = (pv_rooted_entry_t) addr;
	addr = (vm_offset_t) (pv_head_table + npages);

	pv_hash_table = (pv_hashed_entry_t *)addr;
	addr = (vm_offset_t) (pv_hash_table + (npvhashbuckets));

	pv_lock_table = (char *) addr;
	addr = (vm_offset_t) (pv_lock_table + FUNC11(npages));

	pv_hash_lock_table = (char *) addr;
	addr = (vm_offset_t) (pv_hash_lock_table + FUNC10((npvhashbuckets)));

	pmap_phys_attributes = (char *) addr;

	ppnum_t  last_pn = FUNC3(avail_end);
        unsigned int i;
	pmap_memory_region_t *pmptr = pmap_memory_regions;
	for (i = 0; i < pmap_memory_region_count; i++, pmptr++) {
		if (pmptr->type != kEfiConventionalMemory)
			continue;
		ppnum_t pn;
		for (pn = pmptr->base; pn <= pmptr->end; pn++) {
			if (pn < last_pn) {
				pmap_phys_attributes[pn] |= PHYS_MANAGED;

				if (pn > last_managed_page)
					last_managed_page = pn;

				if (pn >= lowest_hi && pn <= highest_hi)
					pmap_phys_attributes[pn] |= PHYS_NOENCRYPT;
			}
		}
	}
	while (vsize) {
		ppn = FUNC9(kernel_pmap, vaddr);

		pmap_phys_attributes[ppn] |= PHYS_NOENCRYPT;

		vaddr += PAGE_SIZE;
		vsize -= PAGE_SIZE;
	}
	/*
	 *	Create the zone of physical maps,
	 *	and of the physical-to-virtual entries.
	 */
	s = (vm_size_t) sizeof(struct pmap);
	pmap_zone = FUNC16(s, 400*s, 4096, "pmap"); /* XXX */
        FUNC17(pmap_zone, Z_NOENCRYPT, TRUE);

	pmap_anchor_zone = FUNC16(PAGE_SIZE, task_max, PAGE_SIZE, "pagetable anchors");
	FUNC17(pmap_anchor_zone, Z_NOENCRYPT, TRUE);

	/* The anchor is required to be page aligned. Zone debugging adds
	 * padding which may violate that requirement. Tell the zone
	 * subsystem that alignment is required.
	 */

	FUNC17(pmap_anchor_zone, Z_ALIGNMENT_REQUIRED, TRUE);
/* TODO: possible general optimisation...pre-allocate via zones commonly created
 * level3/2 pagetables
 */
	pmap_uanchor_zone = FUNC16(PAGE_SIZE, task_max, PAGE_SIZE, "pagetable user anchors");
	FUNC17(pmap_uanchor_zone, Z_NOENCRYPT, TRUE);

	/* The anchor is required to be page aligned. Zone debugging adds
	 * padding which may violate that requirement. Tell the zone
	 * subsystem that alignment is required.
	 */

	FUNC17(pmap_uanchor_zone, Z_ALIGNMENT_REQUIRED, TRUE);

	s = (vm_size_t) sizeof(struct pv_hashed_entry);
	pv_hashed_list_zone = FUNC16(s, 10000*s /* Expandable zone */,
	    4096 * 3 /* LCM x86_64*/, "pv_list");
	FUNC17(pv_hashed_list_zone, Z_NOENCRYPT, TRUE);
	FUNC17(pv_hashed_list_zone, Z_GZALLOC_EXEMPT, TRUE);

	/* create pv entries for kernel pages mapped by low level
	   startup code.  these have to exist so we can pmap_remove()
	   e.g. kext pages from the middle of our addr space */

	vaddr = (vm_map_offset_t) VM_MIN_KERNEL_ADDRESS;
	for (ppn = VM_MIN_KERNEL_PAGE; ppn < FUNC3(avail_start); ppn++) {
		pv_rooted_entry_t pv_e;

		pv_e = FUNC6(ppn);
		pv_e->va_and_flags = vaddr;
		vaddr += PAGE_SIZE;
		pv_e->pmap = kernel_pmap;
		FUNC12(&pv_e->qlink);
	}
	pmap_initialized = TRUE;

	max_preemption_latency_tsc = FUNC14((uint64_t)MAX_PREEMPTION_LATENCY_NS, tscFCvtn2t);

	/*
	 * Ensure the kernel's PML4 entry exists for the basement
	 * before this is shared with any user.
	 */
	FUNC8(kernel_pmap, KERNEL_BASEMENT, PMAP_EXPAND_OPTIONS_NONE);

#if CONFIG_VMX
	pmap_ept_support_ad = vmx_hv_support()  && (VMX_CAP(MSR_IA32_VMX_EPT_VPID_CAP, MSR_IA32_VMX_EPT_VPID_CAP_AD_SHIFT, 1) ? TRUE : FALSE);
	pmap_eptp_flags = HV_VMX_EPTP_MEMORY_TYPE_WB | HV_VMX_EPTP_WALK_LENGTH(4) | (pmap_ept_support_ad ? HV_VMX_EPTP_ENABLE_AD_FLAGS : 0);
#endif /* CONFIG_VMX */
}