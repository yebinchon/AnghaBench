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
typedef  int uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int PAGE_MASK ; 
 size_t FUNC1 (int) ; 
 scalar_t__ mbutl ; 
 scalar_t__* mcl_paddr ; 
 int FUNC2 (scalar_t__) ; 

uint64_t
FUNC3(char *addr)
{
	vm_offset_t base_phys;

	if (!FUNC0(addr))
		return (0);
	base_phys = mcl_paddr[FUNC1(addr - (char *)mbutl)];

	if (base_phys == 0)
		return (0);
	return ((uint64_t)(FUNC2(base_phys) | ((uint64_t)addr & PAGE_MASK)));
}