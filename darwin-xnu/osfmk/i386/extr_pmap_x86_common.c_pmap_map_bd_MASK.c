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
typedef  scalar_t__ vm_map_offset_t ;
typedef  int pt_entry_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int INTEL_PTE_MOD ; 
 int INTEL_PTE_NCACHE ; 
 int INTEL_PTE_NX ; 
 int INTEL_PTE_PTA ; 
 int INTEL_PTE_REF ; 
 int INTEL_PTE_VALID ; 
 int INTEL_PTE_WIRED ; 
 int INTEL_PTE_WRITE ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int* PT_ENTRY_NULL ; 
 scalar_t__ TRUE ; 
 unsigned int VM_MEM_GUARDED ; 
 unsigned int VM_MEM_NOT_CACHEABLE ; 
 int VM_PROT_EXECUTE ; 
 int VM_PROT_WRITE ; 
 unsigned int VM_WIMG_USE_DEFAULT ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  kernel_pmap ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int* FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int*,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ FUNC7 (int) ; 

vm_offset_t
FUNC8(
	vm_offset_t	virt,
	vm_map_offset_t	start_addr,
	vm_map_offset_t	end_addr,
	vm_prot_t	prot,
	unsigned int	flags)
{
	pt_entry_t	template;
	pt_entry_t	*ptep;

	vm_offset_t	base = virt;
	boolean_t	doflush = FALSE;

	template = FUNC2(start_addr)
		| INTEL_PTE_REF
		| INTEL_PTE_MOD
		| INTEL_PTE_WIRED
		| INTEL_PTE_VALID;

	if ((flags & (VM_MEM_NOT_CACHEABLE | VM_WIMG_USE_DEFAULT)) == VM_MEM_NOT_CACHEABLE) {
		template |= INTEL_PTE_NCACHE;
		if (!(flags & (VM_MEM_GUARDED)))
			template |= INTEL_PTE_PTA;
	}

	if ((prot & VM_PROT_EXECUTE) == 0)
		template |= INTEL_PTE_NX;

	if (prot & VM_PROT_WRITE)
		template |= INTEL_PTE_WRITE;

	while (start_addr < end_addr) {
		ptep = FUNC4(kernel_pmap, (vm_map_offset_t)virt);
		if (ptep == PT_ENTRY_NULL) {
			FUNC3("pmap_map_bd: Invalid kernel address");
		}
		if (FUNC7(*ptep)) {
			doflush = TRUE;
		}
		FUNC5(ptep, template);
		FUNC6(template);
		virt += PAGE_SIZE;
		start_addr += PAGE_SIZE;
	}
	if (doflush) {
		FUNC1();
		FUNC0(kernel_pmap, base, base + end_addr - start_addr);
	}
	return(virt);
}