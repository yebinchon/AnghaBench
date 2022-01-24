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
typedef  int /*<<< orphan*/  ppnum_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 unsigned int INTEL_EPT_WB ; 
 unsigned int INTEL_PTE_PTA ; 
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 unsigned int PHYS_NCACHE ; 
 unsigned int PHYS_PTA ; 
 unsigned int FUNC1 (scalar_t__) ; 
 scalar_t__ last_managed_page ; 
 unsigned int* pmap_phys_attributes ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 

unsigned	FUNC3(ppnum_t pn, boolean_t is_ept) {
	if (last_managed_page == 0)
		return 0;

	if (!FUNC0(FUNC2(pn)))
	    return FUNC1(is_ept);

	/*
	 * The cache attributes are read locklessly for efficiency.
	 */
	unsigned int attr = pmap_phys_attributes[FUNC2(pn)];
	unsigned int template = 0;

	/*
	 * The PTA bit is currently unsupported for EPT PTEs.
	 */
	if ((attr & PHYS_PTA) && !is_ept)
		template |= INTEL_PTE_PTA;

	/*
	 * If the page isn't marked as NCACHE, the default for EPT entries
	 * is WB.
	 */
	if (attr & PHYS_NCACHE)
		template |= FUNC1(is_ept);
	else if (is_ept)
		template |= INTEL_EPT_WB;

	return template;
}