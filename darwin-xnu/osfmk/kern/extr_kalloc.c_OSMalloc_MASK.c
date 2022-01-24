#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_size_t ;
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
struct TYPE_5__ {int OSMT_attr; } ;
typedef  TYPE_1__* OSMallocTag ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int OSMT_PAGEABLE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int PAGE_MASK ; 
 int /*<<< orphan*/  VM_KERN_MEMORY_KALLOC ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kernel_map ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

void *
FUNC4(
	uint32_t			size,
	OSMallocTag			tag)
{
	void			*addr=NULL;
	kern_return_t	kr;

	FUNC0(tag);
	if ((tag->OSMT_attr & OSMT_PAGEABLE)
	    && (size & ~PAGE_MASK)) {
		if ((kr = FUNC3(kernel_map, (vm_offset_t *)&addr, size)) != KERN_SUCCESS)
			addr = NULL;
	} else 
		addr = FUNC2((vm_size_t)size, VM_KERN_MEMORY_KALLOC);

	if (!addr)
		FUNC1(tag);

	return(addr);
}