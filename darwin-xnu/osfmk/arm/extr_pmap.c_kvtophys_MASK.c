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
typedef  int vm_offset_t ;
typedef  int pmap_paddr_t ;

/* Variables and functions */
 int PAGE_MASK ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  kernel_pmap ; 
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 

pmap_paddr_t
FUNC2(
	vm_offset_t va)
{
	pmap_paddr_t pa;

	pa = FUNC0(va);
	if (pa) return pa;
	pa = ((pmap_paddr_t)FUNC1(kernel_pmap, va)) << PAGE_SHIFT;
	if (pa)
		pa |= (va & PAGE_MASK);

	return ((pmap_paddr_t)pa);
}