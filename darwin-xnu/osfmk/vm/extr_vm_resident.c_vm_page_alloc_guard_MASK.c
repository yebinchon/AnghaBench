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
typedef  scalar_t__ vm_page_t ;
typedef  int /*<<< orphan*/  vm_object_t ;
typedef  int /*<<< orphan*/  vm_object_offset_t ;

/* Variables and functions */
 scalar_t__ VM_PAGE_NULL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

vm_page_t
FUNC3(
	vm_object_t		object,
	vm_object_offset_t	offset)
{
	vm_page_t	mem;

	FUNC0(object);
	mem = FUNC1();
	if (mem == VM_PAGE_NULL)
		return VM_PAGE_NULL;

	FUNC2(mem, object, offset);

	return(mem);
}