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
typedef  int vm_map_offset_t ;
typedef  int /*<<< orphan*/  pmap_t ;
typedef  int pd_entry_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int INTEL_PDPTE_NESTED ; 
 int NBPDPT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  cpu_64bit ; 
 int* FUNC2 (int /*<<< orphan*/ ,int) ; 

boolean_t FUNC3(pmap_t p, vm_map_offset_t *s, vm_map_offset_t *e) {
	pd_entry_t *pdpte;
	boolean_t rval = FALSE;

	if (!cpu_64bit)
		return rval;

	FUNC0(p);

	pdpte = FUNC2(p, *s);
	if (pdpte && (*pdpte & INTEL_PDPTE_NESTED)) {
		*s &= ~(NBPDPT -1);
		rval = TRUE;
	}

	pdpte = FUNC2(p, *e);
	if (pdpte && (*pdpte & INTEL_PDPTE_NESTED)) {
		*e = ((*e + NBPDPT) & ~(NBPDPT -1));
		rval = TRUE;
	}

	FUNC1(p);

	return rval;
}