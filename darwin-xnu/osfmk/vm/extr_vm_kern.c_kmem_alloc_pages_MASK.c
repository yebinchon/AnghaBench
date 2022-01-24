#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vm_page_t ;
typedef  int /*<<< orphan*/  vm_object_t ;
typedef  scalar_t__ vm_object_size_t ;
typedef  int /*<<< orphan*/  vm_object_offset_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
struct TYPE_4__ {int /*<<< orphan*/  vmp_busy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 scalar_t__ PAGE_SIZE ; 
 TYPE_1__* VM_PAGE_NULL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

kern_return_t
FUNC5(
	vm_object_t		object,
	vm_object_offset_t	offset,
	vm_object_size_t	size)
{
	vm_object_size_t		alloc_size;

	alloc_size = FUNC2(size);
        FUNC1(object);
	while (alloc_size) {
	    vm_page_t	mem;


	    /*
	     *	Allocate a page
	     */
	    while (VM_PAGE_NULL == 
		  (mem = FUNC4(object, offset))) {
		FUNC3(object);
		FUNC0();
		FUNC1(object);
	    }
	    mem->vmp_busy = FALSE;

	    alloc_size -= PAGE_SIZE;
	    offset += PAGE_SIZE;
	}
	FUNC3(object);
	return KERN_SUCCESS;
}