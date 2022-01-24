#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vm_object_t ;
typedef  int /*<<< orphan*/  memory_object_control_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_10__ {scalar_t__ named; int /*<<< orphan*/  pager_ready; int /*<<< orphan*/  ref_count; int /*<<< orphan*/  alive; scalar_t__ terminating; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_FAILURE ; 
 int /*<<< orphan*/  KERN_INVALID_ARGUMENT ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int /*<<< orphan*/  THREAD_UNINT ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  VM_OBJECT_EVENT_PAGER_READY ; 
 int /*<<< orphan*/  VM_OBJECT_EVENT_PAGING_IN_PROGRESS ; 
 TYPE_1__* VM_OBJECT_NULL ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

kern_return_t
FUNC7(
	memory_object_control_t	control,
	boolean_t		wait_on_terminating)
{
	vm_object_t		object;

	object = FUNC0(control);
	if (object == VM_OBJECT_NULL) {
		return (KERN_INVALID_ARGUMENT);
	}
restart:
	FUNC1(object);

	if (object->terminating && wait_on_terminating) {
		FUNC6(object, 
			VM_OBJECT_EVENT_PAGING_IN_PROGRESS, 
			THREAD_UNINT);
		goto restart;
	}

	if (!object->alive) {
		FUNC5(object);
		return KERN_FAILURE;
	}

	if (object->named == TRUE) {
		FUNC5(object);
		return KERN_SUCCESS;
	}
	object->named = TRUE;
	FUNC2(object);
	object->ref_count++;
	FUNC3(object);
	while (!object->pager_ready) {
		FUNC4(object,
				VM_OBJECT_EVENT_PAGER_READY,
				THREAD_UNINT);
	}
	FUNC5(object);
	return (KERN_SUCCESS);
}