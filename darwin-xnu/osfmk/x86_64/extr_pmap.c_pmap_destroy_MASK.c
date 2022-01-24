#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_9__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* pmap_t ;
struct TYPE_19__ {TYPE_1__* map; } ;
struct TYPE_18__ {scalar_t__ resident_page_count; } ;
struct TYPE_17__ {int ref_count; int /*<<< orphan*/  ledger; TYPE_4__* pm_obj; TYPE_4__* pm_obj_pdpt; TYPE_4__* pm_obj_pml4; struct TYPE_17__* pm_upml4; struct TYPE_17__* pm_pml4; } ;
struct TYPE_16__ {TYPE_2__* pmap; } ;

/* Variables and functions */
 int DBG_FUNC_END ; 
 int DBG_FUNC_START ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int PAGE_SIZE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 TYPE_2__* PMAP_NULL ; 
 int /*<<< orphan*/  FUNC3 (int,...) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  PMAP__DESTROY ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 TYPE_9__* FUNC8 () ; 
 int /*<<< orphan*/  inuse_ptepages_count ; 
 TYPE_2__* kernel_pmap ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pmap_anchor_zone ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 scalar_t__ pmap_pcid_ncpus ; 
 int /*<<< orphan*/  pmap_uanchor_zone ; 
 int /*<<< orphan*/  pmap_zone ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,TYPE_2__*) ; 

void
FUNC15(pmap_t	p)
{
	int		c;

	if (p == PMAP_NULL)
		return;

	FUNC3(FUNC1(PMAP__DESTROY) | DBG_FUNC_START,
	           FUNC7(p));

	FUNC2(p);

	c = --p->ref_count;

	FUNC10((FUNC8() && (FUNC8()->map)) ? (FUNC8()->map->pmap != p) : TRUE);

	if (c == 0) {
		/* 
		 * If some cpu is not using the physical pmap pointer that it
		 * is supposed to be (see set_dirbase), we might be using the
		 * pmap that is being destroyed! Make sure we are
		 * physically on the right pmap:
		 */
		FUNC5(p, 0x0ULL, 0xFFFFFFFFFFFFF000ULL);
		if (pmap_pcid_ncpus)
			FUNC12(p);
	}

	FUNC4(p);

	if (c != 0) {
		FUNC3(FUNC1(PMAP__DESTROY) | DBG_FUNC_END);
		FUNC10(p == kernel_pmap);
	        return;	/* still in use */
	}

	/*
	 *	Free the memory maps, then the
	 *	pmap structure.
	 */
	int inuse_ptepages = 0;

	FUNC14(pmap_anchor_zone, p->pm_pml4);
	FUNC14(pmap_uanchor_zone, p->pm_upml4);

	inuse_ptepages += p->pm_obj_pml4->resident_page_count;
	FUNC13(p->pm_obj_pml4);

	inuse_ptepages += p->pm_obj_pdpt->resident_page_count;
	FUNC13(p->pm_obj_pdpt);

	inuse_ptepages += p->pm_obj->resident_page_count;
	FUNC13(p->pm_obj);

	FUNC0(-inuse_ptepages,  &inuse_ptepages_count);
	FUNC6(p, inuse_ptepages * PAGE_SIZE);

	FUNC11(p);
	FUNC9(p->ledger);
	FUNC14(pmap_zone, p);

	FUNC3(FUNC1(PMAP__DESTROY) | DBG_FUNC_END);
}