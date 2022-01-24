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
typedef  scalar_t__ kern_return_t ;

/* Variables and functions */
 size_t KALLOC_MAX ; 
 int /*<<< orphan*/  VM_KERN_MEMORY_OSKEXT ; 
 void* FUNC0 (size_t) ; 
 int /*<<< orphan*/  kernel_map ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__*,size_t,int /*<<< orphan*/ ) ; 
 void* FUNC2 (size_t) ; 
 size_t FUNC3 (size_t) ; 

void *
FUNC4(size_t size)
{
    void * ptr = NULL;
#if KERNEL
    kern_return_t rval = 0;
    vm_offset_t addr = 0;
#endif /* KERNEL */

    size = FUNC3(size);

#if KERNEL
    if (size < KALLOC_MAX) {
        ptr = kalloc(size);
    } else {
        rval = kmem_alloc(kernel_map, &addr, size, VM_KERN_MEMORY_OSKEXT);
        if (!rval) ptr = (void *) addr;
    }
#else /* !KERNEL */
    ptr = FUNC2(size);
#endif /* KERNEL */

    return ptr;
}