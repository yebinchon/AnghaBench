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
typedef  scalar_t__ vm_page_t ;
typedef  TYPE_1__* vm_object_t ;
typedef  int /*<<< orphan*/  vm_object_offset_t ;
struct TYPE_5__ {scalar_t__ can_grab_secluded; } ;

/* Variables and functions */
 int VM_PAGE_GRAB_SECLUDED ; 
 scalar_t__ VM_PAGE_NULL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,TYPE_1__*,int /*<<< orphan*/ ) ; 

vm_page_t
FUNC3(
	vm_object_t		object,
	vm_object_offset_t	offset)
{
	vm_page_t	mem;
	int		grab_options;

	FUNC0(object);
	grab_options = 0;
#if CONFIG_SECLUDED_MEMORY
	if (object->can_grab_secluded) {
		grab_options |= VM_PAGE_GRAB_SECLUDED;
	}
#endif /* CONFIG_SECLUDED_MEMORY */
	mem = FUNC1(grab_options);
	if (mem == VM_PAGE_NULL)
		return VM_PAGE_NULL;

	FUNC2(mem, object, offset);

	return(mem);
}