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
typedef  scalar_t__ vm_offset_t ;
typedef  int /*<<< orphan*/  vm_map_t ;
typedef  size_t uint64_t ;
typedef  size_t uint32_t ;
typedef  int boolean_t ;

/* Variables and functions */
 int FALSE ; 
 size_t FUNC0 (size_t,size_t) ; 
 size_t PAGE_MASK ; 
 size_t PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (size_t,size_t,size_t) ; 
 scalar_t__ gPanicBase ; 
 scalar_t__ gPanicSize ; 
 size_t FUNC2 (int /*<<< orphan*/ ,size_t,int,size_t*) ; 
 size_t FUNC3 (scalar_t__) ; 
 scalar_t__ panic_stackshot ; 
 scalar_t__ FUNC4 (size_t) ; 
 int /*<<< orphan*/  FUNC5 (char*,void const*,size_t) ; 

boolean_t
FUNC6(vm_map_t map, uint64_t uaddr, void *dest, size_t size, boolean_t try_fault, uint32_t *kdp_fault_results)
{
	size_t rem = size;
	char *kvaddr = dest;

#if CONFIG_EMBEDDED
	/* Identify if destination buffer is in panic storage area */
	if (panic_stackshot && ((vm_offset_t)dest >= gPanicBase) && ((vm_offset_t)dest < (gPanicBase + gPanicSize))) {
		if (((vm_offset_t)dest + size) > (gPanicBase + gPanicSize)) {
			return FALSE;
		}
	}
#endif

	while (rem) {
		uint64_t phys_src = FUNC2(map, uaddr, try_fault, kdp_fault_results);
		uint64_t phys_dest = FUNC3((vm_offset_t)kvaddr);
		uint64_t src_rem = PAGE_SIZE - (phys_src & PAGE_MASK);
		uint64_t dst_rem = PAGE_SIZE - (phys_dest & PAGE_MASK);
		size_t cur_size = (uint32_t) FUNC0(src_rem, dst_rem);
		cur_size = FUNC0(cur_size, rem);

		if (phys_src && phys_dest) {
#if CONFIG_EMBEDDED
			/*
			 * On embedded the panic buffer is mapped as device memory and doesn't allow
			 * unaligned accesses. To prevent these, we copy over bytes individually here.
			 */
			if (panic_stackshot)
				stackshot_memcpy(kvaddr, (const void *)phystokv(phys_src), cur_size);
			else
#endif /* CONFIG_EMBEDDED */
				FUNC1(phys_src, phys_dest, cur_size);
		} else {
			break;
		}

		uaddr += cur_size;
		kvaddr += cur_size;
		rem -= cur_size;
	}

	return (rem == 0);
}