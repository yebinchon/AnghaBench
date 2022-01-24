#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int pt_entry_t ;
typedef  scalar_t__ ppnum_t ;
typedef  TYPE_1__* pmap_t ;
typedef  int pd_entry_t ;
typedef  int /*<<< orphan*/  boolean_t ;
typedef  int /*<<< orphan*/  addr64_t ;
struct TYPE_6__ {int /*<<< orphan*/  ref_count; } ;

/* Variables and functions */
 int* PD_ENTRY_NULL ; 
 int PTE_PS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int* PT_ENTRY_NULL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int* FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int* FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

ppnum_t
FUNC9(pmap_t pmap, addr64_t va)
{
	pt_entry_t	*ptp;
	pd_entry_t	*pdep;
	ppnum_t		ppn = 0;
	pd_entry_t	pde;
	pt_entry_t	pte;
	boolean_t	is_ept;

	is_ept = FUNC2(pmap);

	FUNC3();

	/* This refcount test is a band-aid--several infrastructural changes
	 * are necessary to eliminate invocation of this routine from arbitrary
	 * contexts.
	 */
	
	if (!pmap->ref_count)
		goto pfp_exit;

	pdep = FUNC5(pmap, va);

	if ((pdep != PD_ENTRY_NULL) && ((pde = *pdep) & FUNC0(is_ept))) {
		if (pde & PTE_PS) {
			ppn = (ppnum_t) FUNC1(FUNC7(pde));
			ppn += (ppnum_t) FUNC8(va);
		}
		else {
			ptp = FUNC6(pmap, va);
			if ((PT_ENTRY_NULL != ptp) && (((pte = *ptp) & FUNC0(is_ept)) != 0)) {
				ppn = (ppnum_t) FUNC1(FUNC7(pte));
			}
		}
	}
pfp_exit:	
	FUNC4();

        return ppn;
}