#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vm_object_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/ * memory_object_t ;
typedef  int /*<<< orphan*/  memory_object_size_t ;
struct TYPE_15__ {int vo_size; scalar_t__ paging_offset; scalar_t__ pager_created; int /*<<< orphan*/  pager_initialized; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  THREAD_UNINT ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  VM_OBJECT_EVENT_INITIALIZED ; 
 TYPE_1__* VM_OBJECT_NULL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 TYPE_1__* kernel_object ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,TYPE_1__*,TYPE_1__*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ *,TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 

void
FUNC11(
	vm_object_t	object)
{
	memory_object_t		pager;
	vm_object_t		pager_object = VM_OBJECT_NULL;

	FUNC0(object != kernel_object);

	/*
	 *	Prevent collapse or termination by holding a paging reference
	 */

	FUNC7(object);
	if (object->pager_created) {
		/*
		 *	Someone else got to it first...
		 *	wait for them to finish initializing the ports
		 */
		while (!object->pager_initialized) {
			FUNC9(object,
				        VM_OBJECT_EVENT_INITIALIZED,
				        THREAD_UNINT);
		}
		FUNC8(object);
		return;
	}

	if ((uint32_t) (object->vo_size/PAGE_SIZE) !=
	    (object->vo_size/PAGE_SIZE)) {
#if DEVELOPMENT || DEBUG
		printf("vm_object_compressor_pager_create(%p): "
		       "object size 0x%llx >= 0x%llx\n",
		       object,
		       (uint64_t) object->vo_size,
		       0x0FFFFFFFFULL*PAGE_SIZE);
#endif /* DEVELOPMENT || DEBUG */
		FUNC8(object);
		return;
	}

	/*
	 *	Indicate that a memory object has been assigned
	 *	before dropping the lock, to prevent a race.
	 */

	object->pager_created = TRUE;
	object->paging_offset = 0;
		
	FUNC10(object);

	/*
	 *	Create the [internal] pager, and associate it with this object.
	 *
	 *	We make the association here so that vm_object_enter()
	 * 	can look up the object to complete initializing it.  No
	 *	user will ever map this object.
	 */
	{
		/* create our new memory object */
		FUNC0((uint32_t) (object->vo_size/PAGE_SIZE) ==
		       (object->vo_size/PAGE_SIZE));
		(void) FUNC1(
			(memory_object_size_t) object->vo_size,
			&pager);
		if (pager == NULL) {
			FUNC3("vm_object_compressor_pager_create(): "
			      "no pager for object %p size 0x%llx\n",
			      object, (uint64_t) object->vo_size);
		}
       }

	/*
	 *	A reference was returned by
	 *	memory_object_create(), and it is
	 *	copied by vm_object_memory_object_associate().
	 */

	pager_object = FUNC6(pager,
							 object,
							 object->vo_size,
							 FALSE);
	if (pager_object != object) {
		FUNC3("vm_object_compressor_pager_create: mismatch (pager: %p, pager_object: %p, orig_object: %p, orig_object size: 0x%llx)\n", pager, pager_object, object, (uint64_t) object->vo_size);
	}

	/*
	 *	Drop the reference we were passed.
	 */
	FUNC2(pager);

	FUNC5(object);

	/*
	 *	Release the paging reference
	 */
	FUNC8(object);
}