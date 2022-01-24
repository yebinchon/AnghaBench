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
typedef  int vm_prot_t ;
typedef  scalar_t__ vm_offset_t ;
typedef  int vm_map_offset_t ;
typedef  int pt_entry_t ;

/* Variables and functions */
 int INTEL_PTE_MOD ; 
 int INTEL_PTE_NX ; 
 int INTEL_PTE_REF ; 
 int INTEL_PTE_VALID ; 
 int INTEL_PTE_WIRED ; 
 int INTEL_PTE_WRITE ; 
 int PAGE_MASK ; 
 scalar_t__ PAGE_SIZE ; 
 unsigned int PMAP_EXPAND_OPTIONS_ALIASMAP ; 
 int* PT_ENTRY_NULL ; 
 int VM_PROT_EXECUTE ; 
 int VM_PROT_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  kernel_pmap ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,unsigned int) ; 
 int* FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int*,int) ; 
 scalar_t__ FUNC6 (int) ; 

void
FUNC7(
	vm_offset_t	ava,
	vm_map_offset_t	start_addr,
	vm_map_offset_t	end_addr,
	vm_prot_t	prot,
	unsigned int	eoptions)
{
	pt_entry_t	prot_template, template;
	pt_entry_t	*aptep, *sptep;

	prot_template =  INTEL_PTE_REF | INTEL_PTE_MOD | INTEL_PTE_WIRED | INTEL_PTE_VALID;
	if ((prot & VM_PROT_EXECUTE) == 0)
		prot_template |= INTEL_PTE_NX;

	if (prot & VM_PROT_WRITE)
		prot_template |= INTEL_PTE_WRITE;
	FUNC0(((start_addr | end_addr) & PAGE_MASK) == 0);
	while (start_addr < end_addr) {
		aptep = FUNC4(kernel_pmap, (vm_map_offset_t)ava);
		if (aptep == PT_ENTRY_NULL) {
			if (eoptions & PMAP_EXPAND_OPTIONS_ALIASMAP) {
				FUNC3(kernel_pmap, ava, PMAP_EXPAND_OPTIONS_ALIASMAP);
				aptep = FUNC4(kernel_pmap, (vm_map_offset_t)ava);
			} else {
				FUNC2("pmap_alias: Invalid alias address");
			}
		}
		/* The aliased range should not have any active mappings */
		FUNC0(FUNC6(*aptep) == 0);

		sptep = FUNC4(kernel_pmap, start_addr);
		FUNC0(sptep != PT_ENTRY_NULL && (FUNC6(*sptep) != 0));
		template = FUNC1(FUNC6(*sptep)) | prot_template;
		FUNC5(aptep, template);

		ava += PAGE_SIZE;
		start_addr += PAGE_SIZE;
	}
}