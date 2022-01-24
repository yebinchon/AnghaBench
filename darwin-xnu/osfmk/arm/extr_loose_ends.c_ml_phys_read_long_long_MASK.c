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
typedef  int uint32_t ;
typedef  int ppnum_t ;
typedef  int pmap_paddr_t ;

/* Variables and functions */
 int PAGE_MASK ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  VM_PROT_READ ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 unsigned int FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC5 (int,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int) ; 

__attribute__((used)) static unsigned long long
FUNC7(pmap_paddr_t paddr)
{
	unsigned int    index;
	unsigned int    result;
	unsigned int    wimg_bits;
	ppnum_t         pn = (paddr >> PAGE_SHIFT);

	FUNC1();
	wimg_bits = FUNC3(pn);
	index = FUNC5(pn, VM_PROT_READ, wimg_bits);

	result = *(volatile unsigned long long *)(FUNC4(FUNC0(), index)
		                         | ((uint32_t)paddr & PAGE_MASK));

	FUNC6(index);
	FUNC2();

	return result;
}