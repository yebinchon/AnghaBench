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

__attribute__((used)) static unsigned int
FUNC7(pmap_paddr_t paddr, int size)
{
	unsigned int    index;
	unsigned int    result;
	unsigned int    wimg_bits;
	ppnum_t         pn = (paddr >> PAGE_SHIFT);
	unsigned char   s1;
	unsigned short  s2;
	vm_offset_t     copywindow_vaddr = 0;

	FUNC1();
	wimg_bits = FUNC3(pn);
	index = FUNC5(pn, VM_PROT_READ, wimg_bits);
	copywindow_vaddr = FUNC4(FUNC0(), index) | ((uint32_t)paddr & PAGE_MASK);;

	switch (size) {
		case 1:
			s1 = *(volatile unsigned char *)(copywindow_vaddr);
			result = s1;
			break;
		case 2:
			s2 = *(volatile unsigned short *)(copywindow_vaddr);
			result = s2;
			break;
		case 4:
		default:
			result = *(volatile unsigned int *)(copywindow_vaddr);
			break;
	}

	FUNC6(index);
	FUNC2();

	return result;
}