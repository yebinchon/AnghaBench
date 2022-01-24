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
typedef  unsigned int vm_offset_t ;
typedef  int uint64_t ;
typedef  int uint32_t ;
typedef  TYPE_1__* pmap_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_3__ {int asid; scalar_t__ nested; } ;

/* Variables and functions */
 unsigned int ARM64_FULL_TLB_FLUSH_THRESHOLD ; 
 unsigned int ARM_FULL_TLB_FLUSH_THRESHOLD ; 
 unsigned int ARM_SMALL_PAGE_SIZE ; 
 unsigned int ARM_TT_L3_SHIFT ; 
 scalar_t__ FALSE ; 
 int TLBI_ASID_SHIFT ; 
 scalar_t__ TRUE ; 
 int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int) ; 
 unsigned int FUNC7 (unsigned int) ; 
 unsigned int FUNC8 (int) ; 

__attribute__((used)) static void
FUNC9(
	vm_offset_t va,
	unsigned length,
	pmap_t pmap)
{
#if	(__ARM_VMSA__ == 7)
	vm_offset_t     end = va + length;
	uint32_t	asid;

	asid = pmap->asid;

	if (length / ARM_SMALL_PAGE_SIZE > ARM_FULL_TLB_FLUSH_THRESHOLD) {
		boolean_t	flush_all = FALSE;

		if ((asid == 0) || (pmap->nested == TRUE))
			flush_all = TRUE;
		if (flush_all)
			flush_mmu_tlb_async();
		else
			flush_mmu_tlb_asid_async(asid);

		return;
	}
	if (pmap->nested == TRUE) {
#if	!__ARM_MP_EXT__
		flush_mmu_tlb();
#else
		va = arm_trunc_page(va);
		while (va < end) {
			flush_mmu_tlb_mva_entries_async(va);
			va += ARM_SMALL_PAGE_SIZE;
		}
#endif
		return;
	}
	va = arm_trunc_page(va) | (asid & 0xff);
	flush_mmu_tlb_entries_async(va, end);

#else
	vm_offset_t		end = va + length;
	uint32_t		asid;

	asid = pmap->asid;

	if ((length >> ARM_TT_L3_SHIFT) > ARM64_FULL_TLB_FLUSH_THRESHOLD) {
		boolean_t       flush_all = FALSE;

		if ((asid == 0) || (pmap->nested == TRUE))
			flush_all = TRUE;
		if (flush_all)
			FUNC4();
		else
			FUNC3((uint64_t)asid << TLBI_ASID_SHIFT);
		return;
	}
	va = FUNC8(asid) | FUNC7(va);
	end = FUNC8(asid) | FUNC7(end);
	if (pmap->nested == TRUE) {
		FUNC2(va, end);
	} else {
		FUNC5(va, end);
	}

#endif
}