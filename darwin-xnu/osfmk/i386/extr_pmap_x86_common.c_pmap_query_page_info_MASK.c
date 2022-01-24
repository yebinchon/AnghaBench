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
typedef  int pt_entry_t ;
typedef  int /*<<< orphan*/  ppnum_t ;
typedef  scalar_t__ pmap_t ;
typedef  scalar_t__ pmap_paddr_t ;
typedef  int pd_entry_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KERN_INVALID_ARGUMENT ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ PMAP_NULL ; 
 int PMAP_QUERY_PAGE_ALTACCT ; 
 int PMAP_QUERY_PAGE_COMPRESSED ; 
 int PMAP_QUERY_PAGE_COMPRESSED_ALTACCT ; 
 int PMAP_QUERY_PAGE_INTERNAL ; 
 int PMAP_QUERY_PAGE_PRESENT ; 
 int PMAP_QUERY_PAGE_REUSABLE ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int PTE_COMPRESSED_ALT ; 
 scalar_t__ FUNC5 (int) ; 
 int PTE_PS ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int* PT_ENTRY_NULL ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 scalar_t__ kernel_pmap ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int* FUNC11 (scalar_t__,int /*<<< orphan*/ ) ; 
 int* FUNC12 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int) ; 

kern_return_t
FUNC15(
	pmap_t		pmap,
	vm_map_offset_t	va,
	int		*disp_p)
{
	int		disp;
	boolean_t	is_ept;
	pmap_paddr_t	pa;
	ppnum_t		pai;
	pd_entry_t	*pde;
	pt_entry_t	*pte;

	FUNC10();
	if (pmap == PMAP_NULL || pmap == kernel_pmap) {
		*disp_p = 0;
		return KERN_INVALID_ARGUMENT;
	}

	disp = 0;
	is_ept = FUNC8(pmap);

	FUNC3(pmap);

	pde = FUNC11(pmap, va);
	if (!pde ||
	    !(*pde & FUNC6(is_ept)) ||
	    (*pde & PTE_PS)) {
		goto done;
	}

	pte = FUNC12(pmap, va);
	if (pte == PT_ENTRY_NULL) {
		goto done;
	}

	pa = FUNC14(*pte);
	if (pa == 0) {
		if (FUNC5(*pte)) {
			disp |= PMAP_QUERY_PAGE_COMPRESSED;
			if (*pte & PTE_COMPRESSED_ALT) {
				disp |= PMAP_QUERY_PAGE_COMPRESSED_ALTACCT;
			}
		}
	} else {
		disp |= PMAP_QUERY_PAGE_PRESENT;
		pai = FUNC9(pa);
		if (!FUNC1(pai)) {
		} else if (FUNC13(pmap, va, pai)) {
			FUNC7(FUNC0(pai));
			disp |= PMAP_QUERY_PAGE_INTERNAL;
			disp |= PMAP_QUERY_PAGE_ALTACCT;
		} else if (FUNC2(pai)) {
			disp |= PMAP_QUERY_PAGE_REUSABLE;
		} else if (FUNC0(pai)) {
			disp |= PMAP_QUERY_PAGE_INTERNAL;
		}
	}

done:
	FUNC4(pmap);
	*disp_p = disp;
	return KERN_SUCCESS;
}