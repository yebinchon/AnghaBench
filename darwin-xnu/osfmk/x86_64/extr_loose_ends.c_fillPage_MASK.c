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
typedef  int /*<<< orphan*/  ppnum_t ;
typedef  int /*<<< orphan*/  pmap_paddr_t ;

/* Variables and functions */
 int PAGE_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(ppnum_t pa, unsigned int fill)
{
	pmap_paddr_t    src;
	int             i;
	int             cnt = PAGE_SIZE / sizeof(unsigned int);
	unsigned int   *addr;

	src = FUNC1(pa);
	for (i = 0, addr = (unsigned int *)FUNC0(src); i < cnt; i++)
		*addr++ = fill;
}