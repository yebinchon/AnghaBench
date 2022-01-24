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
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  int /*<<< orphan*/  pt_entry_t ;
typedef  int /*<<< orphan*/  pt_desc_t ;
typedef  int /*<<< orphan*/  pmap_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  ARM_PGBYTES ; 
 int /*<<< orphan*/  DMB_ISHST ; 
 int /*<<< orphan*/  PVH_TYPE_NULL ; 
 int /*<<< orphan*/  PVH_TYPE_PTDP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC11(
	pmap_t pmap,
	pt_entry_t *pte_p,
	vm_offset_t va,
	unsigned int ttlevel,
	boolean_t alloc_ptd)
{
	pt_desc_t   *ptdp = NULL;
	vm_offset_t *pvh;

	pvh = (vm_offset_t *)(FUNC4(FUNC3(FUNC2((vm_offset_t)pte_p))));

	if (FUNC9(pvh, PVH_TYPE_NULL)) {
		if (alloc_ptd) {
			/*
			 * This path should only be invoked from arm_vm_init.  If we are emulating 16KB pages
			 * on 4KB hardware, we may already have allocated a page table descriptor for a
			 * bootstrap request, so we check for an existing PTD here.
			 */
			ptdp = FUNC6(pmap);
			FUNC10(pvh, ptdp, PVH_TYPE_PTDP);
		} else {
			FUNC5("pmap_init_pte_page(): pte_p %p", pte_p);
		}
	} else if (FUNC9(pvh, PVH_TYPE_PTDP)) {
		ptdp = (pt_desc_t*)(FUNC8(pvh));
	} else {
		FUNC5("pmap_init_pte_page(): invalid PVH type for pte_p %p", pte_p);
	}

	FUNC1(pte_p, ARM_PGBYTES);
	// below barrier ensures the page zeroing is visible to PTW before
	// it is linked to the PTE of previous level
	FUNC0(DMB_ISHST);
	FUNC7(ptdp, pmap, va, ttlevel, pte_p);
}