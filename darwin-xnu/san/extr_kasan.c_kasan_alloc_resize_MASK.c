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
typedef  int vm_size_t ;

/* Variables and functions */
 scalar_t__ KASAN_GUARD_PAD ; 
 int PAGE_SIZE ; 
 scalar_t__ FUNC0 (int,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 

vm_size_t
FUNC2(vm_size_t size)
{
	vm_size_t tmp;
	if (FUNC0(size, 4 * PAGE_SIZE, &tmp)) {
		FUNC1("allocation size overflow (%lu)", size);
	}

	/* add left and right redzones */
	size += KASAN_GUARD_PAD;

	/* ensure the final allocation is an 8-byte multiple */
	size += 8 - (size % 8);

	return size;
}