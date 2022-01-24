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
typedef  int /*<<< orphan*/ * vm_page_t ;
typedef  int /*<<< orphan*/ * vm_object_t ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
#define  VM_PAGEOUT_PB_CONSIDER_WAKING_COMPACTOR_SWAPPER 130 
#define  VM_PAGEOUT_PB_NO_ACTION 129 
#define  VM_PAGEOUT_PB_THREAD_YIELD 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void
FUNC6(vm_object_t *object, int *delayed_unlock,
			    vm_page_t *local_freeq, int *local_freed, int action)
{
	FUNC5();

	if (*object != NULL) {
		FUNC2(*object);
		*object = NULL;
	}
	if (*local_freeq) {

		FUNC3(*local_freeq, TRUE);

		*local_freeq = NULL;
		*local_freed = 0;
	}
	*delayed_unlock = 1;

	switch (action) {

	case VM_PAGEOUT_PB_CONSIDER_WAKING_COMPACTOR_SWAPPER:
		FUNC1();
		break;
	case VM_PAGEOUT_PB_THREAD_YIELD:
		FUNC0(1);
		break;
	case VM_PAGEOUT_PB_NO_ACTION:
	default:
		break;
	}
	FUNC4();
}