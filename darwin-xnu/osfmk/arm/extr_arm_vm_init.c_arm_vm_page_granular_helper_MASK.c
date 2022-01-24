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
typedef  int vm_offset_t ;
typedef  int tt_entry_t ;
typedef  int pt_entry_t ;
typedef  int pmap_paddr_t ;

/* Variables and functions */
 int ARM_PGBYTES ; 
 int ARM_PTE_AF ; 
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int ARM_PTE_NX ; 
 int ARM_PTE_SH ; 
 int ARM_PTE_TYPE ; 
 int ARM_TTE_TABLE_MASK ; 
 int ARM_TTE_TYPE_MASK ; 
 int ARM_TTE_TYPE_TABLE ; 
 int ARM_TT_L1_PT_OFFMASK ; 
 int /*<<< orphan*/  CACHE_ATTRINDX_DEFAULT ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int avail_end ; 
 int avail_start ; 
 int /*<<< orphan*/  FUNC3 (int*,int) ; 
 int* cpu_tte ; 
 int gPhysBase ; 
 int gVirtBase ; 
 scalar_t__ FUNC4 (int) ; 
 int FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (int) ; 
 size_t FUNC7 (int) ; 

__attribute__((used)) static void
FUNC8(vm_offset_t start, vm_offset_t _end, vm_offset_t va, 
                            int pte_prot_APX, int pte_prot_XN)
{
	if (va & ARM_TT_L1_PT_OFFMASK) { /* ragged edge hanging over a ARM_TT_L1_PT_SIZE  boundary */
		va &= (~ARM_TT_L1_PT_OFFMASK);
		tt_entry_t *tte = &cpu_tte[FUNC7(va)];
		tt_entry_t tmplate = *tte;
		pmap_paddr_t pa;
		pt_entry_t *ppte, ptmp;
		unsigned int i;

		pa = va - gVirtBase + gPhysBase;

		if (pa >= avail_end)
			return;

		FUNC2(_end >= va);

		if (ARM_TTE_TYPE_TABLE == (tmplate & ARM_TTE_TYPE_MASK)) {
			/* pick up the existing page table. */
			ppte = (pt_entry_t *)FUNC6((tmplate & ARM_TTE_TABLE_MASK));
		} else {
			/* TTE must be reincarnated COARSE. */
			ppte = (pt_entry_t *)FUNC6(avail_start);
			avail_start += ARM_PGBYTES;
			FUNC3(ppte, ARM_PGBYTES);

			for (i = 0; i < 4; ++i)
				tte[i] = FUNC5(FUNC4((vm_offset_t)ppte) + (i * 0x400)) | ARM_TTE_TYPE_TABLE;
		}

		vm_offset_t len = _end - va;
		if ((pa + len) > avail_end)
			_end -= (pa + len - avail_end);
		FUNC2((start - gVirtBase + gPhysBase) >= gPhysBase);

		/* Apply the desired protections to the specified page range */
		for (i = 0; i < (ARM_PGBYTES / sizeof(*ppte)); i++) {
			if (start <= va && va < _end) {

				ptmp = pa | ARM_PTE_AF | ARM_PTE_SH | ARM_PTE_TYPE;
				ptmp = ptmp | FUNC1(CACHE_ATTRINDX_DEFAULT);
				ptmp = ptmp | FUNC0(pte_prot_APX);
				if (pte_prot_XN)
					ptmp = ptmp | ARM_PTE_NX;

				ppte[i] = ptmp;
			}

			va += ARM_PGBYTES;
			pa += ARM_PGBYTES;
		}
	}
}