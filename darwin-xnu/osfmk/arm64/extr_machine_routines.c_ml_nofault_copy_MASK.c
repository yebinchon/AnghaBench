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
typedef  int vm_offset_t ;
typedef  int addr64_t ;

/* Variables and functions */
 int PAGE_MASK ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int,int,int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

vm_size_t
FUNC4(vm_offset_t virtsrc, vm_offset_t virtdst, vm_size_t size)
{
	addr64_t        cur_phys_dst, cur_phys_src;
	vm_size_t 	count, nbytes = 0;

	while (size > 0) {
		if (!(cur_phys_src = FUNC1(virtsrc)))
			break;
		if (!(cur_phys_dst = FUNC1(virtdst)))
			break;
		if (!FUNC2(FUNC3(cur_phys_dst)) ||
		    !FUNC2(FUNC3(cur_phys_src)))
			break;
		count = PAGE_SIZE - (cur_phys_src & PAGE_MASK);
		if (count > (PAGE_SIZE - (cur_phys_dst & PAGE_MASK)))
			count = PAGE_SIZE - (cur_phys_dst & PAGE_MASK);
		if (count > size)
			count = size;

		FUNC0(cur_phys_src, cur_phys_dst, count);

		nbytes += count;
		virtsrc += count;
		virtdst += count;
		size -= count;
	}

	return nbytes;
}