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
typedef  scalar_t__ ppnum_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 unsigned int PHYS_CACHEABILITY_MASK ; 
 unsigned int PHYS_NCACHE ; 
 unsigned int PHYS_PTA ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 unsigned int VM_MEM_GUARDED ; 
 unsigned int VM_MEM_NOT_CACHEABLE ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 unsigned int* pmap_phys_attributes ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,unsigned int) ; 
 int FUNC7 (scalar_t__) ; 
 scalar_t__ vm_page_fictitious_addr ; 
 scalar_t__ vm_page_guard_addr ; 

void	FUNC8(ppnum_t pn, unsigned int cacheattr) {
	unsigned int current, template = 0;
	int pai;

	if (cacheattr & VM_MEM_NOT_CACHEABLE) {
		if(!(cacheattr & VM_MEM_GUARDED))
			template |= PHYS_PTA;
		template |= PHYS_NCACHE;
	}

	FUNC4();

	FUNC3((pn != vm_page_fictitious_addr) && (pn != vm_page_guard_addr));

	pai = FUNC7(pn);

	if (!FUNC0(pai)) {
		return;
	}

	/* override cache attributes for this phys page
	 * Does not walk through existing mappings to adjust,
	 * assumes page is disconnected
	 */

	FUNC1(pai);

	FUNC6(pn, template);

	current = pmap_phys_attributes[pai] & PHYS_CACHEABILITY_MASK;
	pmap_phys_attributes[pai] &= ~PHYS_CACHEABILITY_MASK;
	pmap_phys_attributes[pai] |= template;

	FUNC2(pai);

	if ((template & PHYS_NCACHE) && !(current & PHYS_NCACHE)) {
		FUNC5(pn);
	}
}