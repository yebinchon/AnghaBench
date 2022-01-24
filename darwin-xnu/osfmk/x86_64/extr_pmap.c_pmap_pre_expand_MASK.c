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
typedef  int /*<<< orphan*/  vm_map_offset_t ;
typedef  int /*<<< orphan*/  pt_entry_t ;
typedef  int /*<<< orphan*/  ppnum_t ;
typedef  int /*<<< orphan*/  pmap_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 int INTEL_EPT_EX ; 
 int INTEL_PTE_USER ; 
 int /*<<< orphan*/ * PDPT_ENTRY_NULL ; 
 int /*<<< orphan*/ * PD_ENTRY_NULL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 
 scalar_t__ PT_ENTRY_NULL ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 

void
FUNC16(pmap_t pmap, vm_map_offset_t vaddr)
{
	ppnum_t pn;
	pt_entry_t		*pte;
	boolean_t		is_ept = FUNC5(pmap);

	FUNC0(pmap);

	if(FUNC9(pmap, vaddr) == PDPT_ENTRY_NULL) {
		if (!FUNC12(&pn))
			FUNC7("pmap_pre_expand");

		FUNC15(pn);

		pte = FUNC10(pmap, vaddr);

		FUNC14(pte, FUNC6(FUNC4(pn))
				| FUNC2(is_ept)
				| (is_ept ? INTEL_EPT_EX : INTEL_PTE_USER)
				| FUNC3(is_ept));

		pte = FUNC11(pmap, vaddr);

		FUNC14(pte, FUNC6(FUNC4(pn))
				| FUNC2(is_ept)
				| (is_ept ? INTEL_EPT_EX : INTEL_PTE_USER)
				| FUNC3(is_ept));

	}

	if(FUNC8(pmap, vaddr) == PD_ENTRY_NULL) {
		if (!FUNC12(&pn))
			FUNC7("pmap_pre_expand");

		FUNC15(pn);

		pte = FUNC9(pmap, vaddr);

		FUNC14(pte, FUNC6(FUNC4(pn))
				| FUNC2(is_ept)
				| (is_ept ? INTEL_EPT_EX : INTEL_PTE_USER)
				| FUNC3(is_ept));
	}

	if(FUNC13(pmap, vaddr) == PT_ENTRY_NULL) {
		if (!FUNC12(&pn))
			FUNC7("pmap_pre_expand");

		FUNC15(pn);

		pte = FUNC8(pmap, vaddr);

		FUNC14(pte, FUNC6(FUNC4(pn))
				| FUNC2(is_ept)
				| (is_ept ? INTEL_EPT_EX : INTEL_PTE_USER)
				| FUNC3(is_ept));
	}

	FUNC1(pmap);
}