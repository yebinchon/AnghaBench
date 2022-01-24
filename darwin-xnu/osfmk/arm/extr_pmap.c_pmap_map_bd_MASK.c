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
typedef  int /*<<< orphan*/  vm_map_address_t ;
typedef  int pt_entry_t ;

/* Variables and functions */
 int /*<<< orphan*/  AP_RONA ; 
 int /*<<< orphan*/  AP_RWNA ; 
 int ARM_PTE_AF ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int ARM_PTE_NG ; 
 int ARM_PTE_NX ; 
 int ARM_PTE_PNX ; 
 int ARM_PTE_TYPE ; 
 int /*<<< orphan*/  CACHE_ATTRINDX_DISABLE ; 
 scalar_t__ PAGE_SIZE ; 
 int* PT_ENTRY_NULL ; 
 int VM_PROT_WRITE ; 
 int /*<<< orphan*/  FUNC3 (int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  kernel_pmap ; 
 int FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

vm_map_address_t
FUNC10(
	vm_map_address_t virt,
	vm_offset_t start,
	vm_offset_t end,
	vm_prot_t prot)
{
	pt_entry_t      tmplate;
	pt_entry_t		*ptep;
	vm_map_address_t vaddr;
	vm_offset_t		paddr;

	/* not cacheable and not buffered */
	tmplate = FUNC6(start)
	          | ARM_PTE_TYPE | ARM_PTE_AF | ARM_PTE_NX | ARM_PTE_PNX
	          | FUNC0((prot & VM_PROT_WRITE) ? AP_RWNA : AP_RONA)
	          | FUNC1(CACHE_ATTRINDX_DISABLE);
#if __ARM_KERNEL_PROTECT__
	tmplate |= ARM_PTE_NG;
#endif /* __ARM_KERNEL_PROTECT__ */

	vaddr = virt;
	paddr = start;
	while (paddr < end) {

		ptep = FUNC8(kernel_pmap, vaddr);
		if (ptep == PT_ENTRY_NULL) {
			FUNC7("pmap_map_bd");
		}
		FUNC4(!FUNC2(*ptep));
		FUNC3(ptep, tmplate);

		FUNC9(tmplate);
		vaddr += PAGE_SIZE;
		paddr += PAGE_SIZE;
	}

	if (end >= start)
		FUNC5(virt, (unsigned)(end - start));

	return (vaddr);
}