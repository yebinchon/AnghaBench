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
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  size_t uint64_t ;
typedef  size_t uint32_t ;
typedef  scalar_t__ ppnum_t ;
typedef  int /*<<< orphan*/  pmap_t ;
typedef  int boolean_t ;

/* Variables and functions */
 size_t FUNC0 (size_t,size_t) ; 
 size_t PAGE_MASK ; 
 size_t PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (size_t,size_t,size_t) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 size_t FUNC5 (scalar_t__) ; 

__attribute__((used)) static boolean_t
FUNC6(pmap_t p, uint64_t uaddr, void *dest, size_t size)
{
        size_t rem = size;
        char *kvaddr = dest;

        while (rem) {
                ppnum_t upn = FUNC3(p, uaddr);
                uint64_t phys_src = FUNC5(upn) | (uaddr & PAGE_MASK);
                uint64_t phys_dest = FUNC2((vm_offset_t)kvaddr);
                uint64_t src_rem = PAGE_SIZE - (phys_src & PAGE_MASK);
                uint64_t dst_rem = PAGE_SIZE - (phys_dest & PAGE_MASK);
                size_t cur_size = (uint32_t) FUNC0(src_rem, dst_rem);
                cur_size = FUNC0(cur_size, rem);

                if (upn && FUNC4(upn) && phys_dest) {
                        FUNC1(phys_src, phys_dest, cur_size);
                }
                else
                        break;
                uaddr += cur_size;
                kvaddr += cur_size;
                rem -= cur_size;
        }
        return (rem == 0);
}