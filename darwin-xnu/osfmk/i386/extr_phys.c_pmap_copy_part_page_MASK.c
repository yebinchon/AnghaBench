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
typedef  uintptr_t vm_size_t ;
typedef  uintptr_t vm_offset_t ;
typedef  scalar_t__ ppnum_t ;
typedef  scalar_t__ pmap_paddr_t ;
typedef  scalar_t__ addr64_t ;

/* Variables and functions */
 uintptr_t INTEL_OFFMASK ; 
 uintptr_t PAGE_MASK ; 
 uintptr_t PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,uintptr_t) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ vm_page_fictitious_addr ; 
 scalar_t__ vm_page_guard_addr ; 

void
FUNC3(
	ppnum_t 	psrc,
	vm_offset_t	src_offset,
	ppnum_t	        pdst,
	vm_offset_t	dst_offset,
	vm_size_t	len)
{
        pmap_paddr_t src, dst;

	FUNC0(psrc != vm_page_fictitious_addr);
	FUNC0(pdst != vm_page_fictitious_addr);
	FUNC0(psrc != vm_page_guard_addr);
	FUNC0(pdst != vm_page_guard_addr);

	src = FUNC2(psrc);
	dst = FUNC2(pdst);

	FUNC0((((uintptr_t)dst & PAGE_MASK) + dst_offset + len) <= PAGE_SIZE);
	FUNC0((((uintptr_t)src & PAGE_MASK) + src_offset + len) <= PAGE_SIZE);

	FUNC1((addr64_t)src + (src_offset & INTEL_OFFMASK),
		   (addr64_t)dst + (dst_offset & INTEL_OFFMASK),
		   len);
}