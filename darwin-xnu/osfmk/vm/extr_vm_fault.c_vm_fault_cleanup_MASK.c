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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ VM_PAGE_NULL ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void
FUNC5(
	vm_object_t	object,
	vm_page_t	top_page)
{
	FUNC3(object);
 	FUNC4(object);

	if (top_page != VM_PAGE_NULL) {
	        object = FUNC1(top_page);

		FUNC2(object);
		FUNC0(top_page);
		FUNC3(object);
		FUNC4(object);
	}
}