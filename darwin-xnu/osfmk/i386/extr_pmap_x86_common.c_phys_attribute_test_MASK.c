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
typedef  int /*<<< orphan*/  vm_map_offset_t ;
typedef  TYPE_1__* pv_rooted_entry_t ;
typedef  TYPE_2__* pv_hashed_entry_t ;
typedef  int pt_entry_t ;
typedef  scalar_t__ ppnum_t ;
typedef  int /*<<< orphan*/  pmap_t ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_6__ {int /*<<< orphan*/  qlink; int /*<<< orphan*/  pmap; } ;
struct TYPE_5__ {scalar_t__ pmap; } ;

/* Variables and functions */
 int INTEL_EPT_MOD ; 
 int INTEL_EPT_REF ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int PHYS_MODIFIED ; 
 int PHYS_REFERENCED ; 
 scalar_t__ PMAP_NULL ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int* pmap_phys_attributes ; 
 int* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ vm_page_fictitious_addr ; 
 scalar_t__ vm_page_guard_addr ; 

int
FUNC12(
	ppnum_t		pn,
	int		bits)
{
	pv_rooted_entry_t	pv_h;
	pv_hashed_entry_t	pv_e;
	pt_entry_t		*pte;
	int			pai;
	pmap_t			pmap;
	int			attributes = 0;
	boolean_t		is_ept;

	FUNC8();
	FUNC4(pn != vm_page_fictitious_addr);
	FUNC4((bits & ~(PHYS_MODIFIED | PHYS_REFERENCED)) == 0);
	if (pn == vm_page_guard_addr)
		return 0;

	pai = FUNC10(pn);

	if (!FUNC0(pai)) {
		/*
		 *	Not a managed page.
		 */
		return 0;
	}

	/*
	 * Fast check...  if bits already collected
	 * no need to take any locks...
	 * if not set, we need to recheck after taking
	 * the lock in case they got pulled in while
	 * we were waiting for the lock
	 */
	if ((pmap_phys_attributes[pai] & bits) == bits)
		return bits;

	pv_h = FUNC7(pai);

	FUNC1(pai);

	attributes = pmap_phys_attributes[pai] & bits;


	/*
	 * Walk down PV list, checking the mappings until we
	 * reach the end or we've found the desired attributes.
	 */
	if (attributes != bits &&
	    pv_h->pmap != PMAP_NULL) {
		/*
		 * There are some mappings.
		 */
		pv_e = (pv_hashed_entry_t)pv_h;
		do {
			vm_map_offset_t va;

			pmap = pv_e->pmap;
			is_ept = FUNC6(pmap);
			va = FUNC2(pv_e);
			/*
	 		 * pick up modify and/or reference bits from mapping
			 */

			pte = FUNC9(pmap, va);
			if (!is_ept) {
				attributes |= (int)(*pte & bits);
			} else {
				attributes |= (int)(FUNC5((*pte & (INTEL_EPT_REF | INTEL_EPT_MOD))) & (PHYS_MODIFIED | PHYS_REFERENCED));

			}

			pv_e = (pv_hashed_entry_t)FUNC11(&pv_e->qlink);

		} while ((attributes != bits) &&
			 (pv_e != (pv_hashed_entry_t)pv_h));
	}
	pmap_phys_attributes[pai] |= attributes;

	FUNC3(pai);
	return (attributes);
}