#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* vm_object_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
struct TYPE_14__ {scalar_t__ prev; scalar_t__ next; } ;
struct TYPE_15__ {scalar_t__ ref_count; scalar_t__ paging_in_progress; scalar_t__ activity_in_progress; struct TYPE_15__* copy; int /*<<< orphan*/  pageout; struct TYPE_15__* shadow; TYPE_1__ cached_list; int /*<<< orphan*/  internal; void* alive; scalar_t__ terminating; void* pager_trusted; scalar_t__ shadow_severed; int /*<<< orphan*/ * pager; scalar_t__ can_persist; } ;

/* Variables and functions */
 void* FALSE ; 
 int /*<<< orphan*/  KERN_FAILURE ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int /*<<< orphan*/  REAP_TERMINATE ; 
 scalar_t__ TRUE ; 
 TYPE_2__* VM_OBJECT_NULL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,TYPE_2__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XPR_VM_OBJECT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 

__attribute__((used)) static kern_return_t
FUNC10(
	vm_object_t	object)
{
	vm_object_t	shadow_object;

	FUNC0(XPR_VM_OBJECT, "vm_object_terminate, object 0x%X ref %d\n",
		object, object->ref_count, 0, 0, 0);

	FUNC4(object);

	if (!object->pageout && (!object->internal && object->can_persist) &&
	    (object->pager != NULL || object->shadow_severed)) {
		/*
		 * Clear pager_trusted bit so that the pages get yanked
		 * out of the object instead of cleaned in place.  This
		 * prevents a deadlock in XMM and makes more sense anyway.
		 */
		object->pager_trusted = FALSE;

		FUNC7(object, REAP_TERMINATE);
	}
	/*
	 *	Make sure the object isn't already being terminated
	 */
	if (object->terminating) {
		FUNC4(object);
		object->ref_count--;
		FUNC1(object->ref_count > 0);
		FUNC9(object);
		return KERN_FAILURE;
	}

	/*
	 * Did somebody get a reference to the object while we were
	 * cleaning it?
	 */
	if (object->ref_count != 1) {
		FUNC4(object);
		object->ref_count--;
		FUNC1(object->ref_count > 0);
		FUNC8(object);
		FUNC9(object);
		return KERN_FAILURE;
	}

	/*
	 *	Make sure no one can look us up now.
	 */

	object->terminating = TRUE;
	object->alive = FALSE;

	if (!object->internal &&
	    object->cached_list.next &&
	    object->cached_list.prev)
		FUNC2(object);

	/*
	 *	Detach the object from its shadow if we are the shadow's
	 *	copy. The reference we hold on the shadow must be dropped
	 *	by our caller.
	 */
	if (((shadow_object = object->shadow) != VM_OBJECT_NULL) &&
	    !(object->pageout)) {
		FUNC3(shadow_object);
		if (shadow_object->copy == object)
			shadow_object->copy = VM_OBJECT_NULL;
		FUNC9(shadow_object);
	}

	if (object->paging_in_progress != 0 ||
	    object->activity_in_progress != 0) {
		/*
		 * There are still some paging_in_progress references
		 * on this object, meaning that there are some paging
		 * or other I/O operations in progress for this VM object.
		 * Such operations take some paging_in_progress references
		 * up front to ensure that the object doesn't go away, but
		 * they may also need to acquire a reference on the VM object,
		 * to map it in kernel space, for example.  That means that
		 * they may end up releasing the last reference on the VM
		 * object, triggering its termination, while still holding
		 * paging_in_progress references.  Waiting for these
		 * pending paging_in_progress references to go away here would
		 * deadlock.
		 *
		 * To avoid deadlocking, we'll let the vm_object_reaper_thread
		 * complete the VM object termination if it still holds
		 * paging_in_progress references at this point.
		 *
		 * No new paging_in_progress should appear now that the
		 * VM object is "terminating" and not "alive".
		 */
		FUNC6(object);
		FUNC9(object);
		/*
		 * Return KERN_FAILURE to let the caller know that we
		 * haven't completed the termination and it can't drop this
		 * object's reference on its shadow object yet.
		 * The reaper thread will take care of that once it has
		 * completed this object's termination.
		 */
		return KERN_FAILURE;
	}
	/*
	 * complete the VM object termination
	 */
	FUNC5(object);
	object = VM_OBJECT_NULL;

	/*
	 * the object lock was released by vm_object_reap()
	 *
	 * KERN_SUCCESS means that this object has been terminated
	 * and no longer needs its shadow object but still holds a
	 * reference on it.
	 * The caller is responsible for dropping that reference.
	 * We can't call vm_object_deallocate() here because that
	 * would create a recursion.
	 */
	return KERN_SUCCESS;
}