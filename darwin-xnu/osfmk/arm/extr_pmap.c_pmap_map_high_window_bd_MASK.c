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
typedef  scalar_t__ vm_size_t ;
typedef  int vm_prot_t ;
typedef  scalar_t__ vm_offset_t ;
typedef  scalar_t__ vm_map_address_t ;
typedef  scalar_t__ pt_entry_t ;

/* Variables and functions */
 int /*<<< orphan*/  AP_RONA ; 
 int /*<<< orphan*/  AP_RWNA ; 
 scalar_t__ ARM_PTE_AF ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ ARM_PTE_NG ; 
 scalar_t__ ARM_PTE_NX ; 
 scalar_t__ ARM_PTE_PNX ; 
 scalar_t__ ARM_PTE_SH ; 
 scalar_t__ ARM_PTE_TYPE ; 
 scalar_t__ ARM_PTE_TYPE_FAULT ; 
 int /*<<< orphan*/  CACHE_ATTRINDX_DEFAULT ; 
 scalar_t__ PAGE_MASK ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  SH_OUTER_MEMORY ; 
 scalar_t__ VM_HIGH_KERNEL_WINDOW ; 
 scalar_t__ VM_MAX_KERNEL_ADDRESS ; 
 int VM_PROT_WRITE ; 
 scalar_t__ VREGION1_SIZE ; 
 scalar_t__ VREGION1_START ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  kernel_pmap ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 scalar_t__* FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 

vm_map_address_t
FUNC10(
	vm_offset_t pa_start,
	vm_size_t len,
	vm_prot_t prot)
{
	pt_entry_t		*ptep, pte;
#if (__ARM_VMSA__ == 7)
	vm_map_address_t	va_start = VM_HIGH_KERNEL_WINDOW;
	vm_map_address_t	va_max = VM_MAX_KERNEL_ADDRESS;
#else
	vm_map_address_t	va_start = VREGION1_START;
	vm_map_address_t	va_max = VREGION1_START + VREGION1_SIZE;
#endif
	vm_map_address_t	va_end;
	vm_map_address_t	va;
	vm_size_t		offset;

	offset = pa_start & PAGE_MASK;
	pa_start -= offset;
	len += offset;

	if (len > (va_max - va_start)) {
		FUNC8("pmap_map_high_window_bd: area too large\n");
	}

scan:
	for ( ; va_start < va_max; va_start += PAGE_SIZE) {
		ptep = FUNC9(kernel_pmap, va_start);
		FUNC5(!FUNC2(*ptep));
		if (*ptep == ARM_PTE_TYPE_FAULT)
			break;
	}
	if (va_start > va_max) {
		FUNC8("pmap_map_high_window_bd: insufficient pages\n");
	}

	for (va_end = va_start + PAGE_SIZE; va_end < va_start + len; va_end += PAGE_SIZE) {
		ptep = FUNC9(kernel_pmap, va_end);
		FUNC5(!FUNC2(*ptep));
		if (*ptep != ARM_PTE_TYPE_FAULT) {
			va_start = va_end + PAGE_SIZE;
			goto scan;
		}
	}

	for (va = va_start; va < va_end; va += PAGE_SIZE, pa_start += PAGE_SIZE) {
		ptep = FUNC9(kernel_pmap, va);
		pte = FUNC7(pa_start)
	          | ARM_PTE_TYPE | ARM_PTE_AF | ARM_PTE_NX | ARM_PTE_PNX
		      | FUNC0((prot & VM_PROT_WRITE) ? AP_RWNA : AP_RONA)
	          | FUNC1(CACHE_ATTRINDX_DEFAULT);
#if	(__ARM_VMSA__ > 7)
		pte |= ARM_PTE_SH(SH_OUTER_MEMORY);
#else
		pte |= ARM_PTE_SH;
#endif
#if __ARM_KERNEL_PROTECT__
		pte |= ARM_PTE_NG;
#endif /* __ARM_KERNEL_PROTECT__ */
		FUNC4(ptep, pte);
	}
	FUNC3(kernel_pmap, va_start, va_start + len);
#if KASAN
	kasan_notify_address(va_start, len);
#endif
	return va_start;
}