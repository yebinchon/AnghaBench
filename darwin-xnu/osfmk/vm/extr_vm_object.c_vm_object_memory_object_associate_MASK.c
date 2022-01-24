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
typedef  int /*<<< orphan*/  vm_object_size_t ;
typedef  int /*<<< orphan*/ * memory_object_t ;
typedef  int /*<<< orphan*/ * memory_object_control_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_10__ {int internal; int pager_created; void* pager_initialized; void* pager_ready; void* named; int /*<<< orphan*/ * pager_control; int /*<<< orphan*/ * pager; int /*<<< orphan*/  copy_strategy; void* pager_trusted; } ;

/* Variables and functions */
 void* FALSE ; 
 int /*<<< orphan*/ * MEMORY_OBJECT_CONTROL_NULL ; 
 int /*<<< orphan*/  MEMORY_OBJECT_COPY_INVALID ; 
 int /*<<< orphan*/ * MEMORY_OBJECT_NULL ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 void* TRUE ; 
 int /*<<< orphan*/  VM_OBJECT_EVENT_INITIALIZED ; 
 int /*<<< orphan*/  VM_OBJECT_EVENT_PAGER_READY ; 
 TYPE_1__* VM_OBJECT_NULL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 

vm_object_t
FUNC8(
	memory_object_t		pager,
	vm_object_t		object,
	vm_object_size_t	size,
	boolean_t		named)
{
	memory_object_control_t control;

	FUNC0(pager != MEMORY_OBJECT_NULL);

	if (object != VM_OBJECT_NULL) {
		FUNC0(object->internal);
		FUNC0(object->pager_created);
		FUNC0(!object->pager_initialized);
		FUNC0(!object->pager_ready);
	} else {
		object = FUNC4(size);
		FUNC0(object != VM_OBJECT_NULL);
		object->internal = FALSE;
		object->pager_trusted = FALSE;
		/* copy strategy invalid until set by memory manager */
		object->copy_strategy = MEMORY_OBJECT_COPY_INVALID;
	}

	/*
	 *	Allocate request port.
	 */

	control = FUNC1(object);
	FUNC0 (control != MEMORY_OBJECT_CONTROL_NULL);

	FUNC5(object);

	FUNC0(!object->pager_ready);
	FUNC0(!object->pager_initialized);
	FUNC0(object->pager == NULL);
	FUNC0(object->pager_control == NULL);

	/*
	 *	Copy the reference we were given.
	 */

	FUNC3(pager);
	object->pager_created = TRUE;
	object->pager = pager;
	object->pager_control = control;
	object->pager_ready = FALSE;

	FUNC6(object);

	/*
	 *	Let the pager know we're using it.
	 */

	(void) FUNC2(pager,
				  object->pager_control,
				  PAGE_SIZE);

	FUNC5(object);
	if (named)
		object->named = TRUE;
	if (object->internal) {
		object->pager_ready = TRUE;
		FUNC7(object, VM_OBJECT_EVENT_PAGER_READY);
	}

	object->pager_initialized = TRUE;
	FUNC7(object, VM_OBJECT_EVENT_INITIALIZED);

	FUNC6(object);

	return object;
}