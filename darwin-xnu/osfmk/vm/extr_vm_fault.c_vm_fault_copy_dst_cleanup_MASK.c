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
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ VM_PAGE_NULL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(
	vm_page_t	page)
{
	vm_object_t	object;

	if (page != VM_PAGE_NULL) {
		object = FUNC0(page);
		FUNC1(object);
		FUNC4();
		FUNC6(page, TRUE);
		FUNC5();
		FUNC2(object);
		FUNC3(object);
	}
}