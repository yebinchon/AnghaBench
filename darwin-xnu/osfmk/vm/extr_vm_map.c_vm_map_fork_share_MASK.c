#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_37__   TYPE_9__ ;
typedef  struct TYPE_36__   TYPE_3__ ;
typedef  struct TYPE_35__   TYPE_2__ ;
typedef  struct TYPE_34__   TYPE_1__ ;

/* Type definitions */
typedef  int vm_prot_t ;
typedef  TYPE_1__* vm_object_t ;
typedef  TYPE_2__* vm_map_t ;
typedef  scalar_t__ vm_map_size_t ;
typedef  TYPE_3__* vm_map_entry_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  scalar_t__ kern_return_t ;
typedef  int /*<<< orphan*/  addr64_t ;
struct TYPE_37__ {int /*<<< orphan*/  pmap; } ;
struct TYPE_36__ {scalar_t__ wired_count; int protection; scalar_t__ inheritance; int max_protection; scalar_t__ vme_start; scalar_t__ vme_end; scalar_t__ is_sub_map; int /*<<< orphan*/  iokit_acct; void* is_shared; scalar_t__ needs_copy; void* use_pmap; } ;
struct TYPE_35__ {int /*<<< orphan*/  pmap; scalar_t__ mapped_in_other_pmaps; } ;
struct TYPE_34__ {scalar_t__ copy_strategy; scalar_t__ vo_size; int /*<<< orphan*/  true_share; scalar_t__ shadowed; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 scalar_t__ MEMORY_OBJECT_COPY_DELAY ; 
 scalar_t__ MEMORY_OBJECT_COPY_SYMMETRIC ; 
 int /*<<< orphan*/  PMAP_NULL ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 TYPE_1__* FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_9__* FUNC6 (TYPE_3__*) ; 
 scalar_t__ VM_INHERIT_NONE ; 
 int /*<<< orphan*/  VM_MAP_KERNEL_FLAGS_NONE ; 
 TYPE_1__* VM_OBJECT_NULL ; 
 int VM_PROT_EXECUTE ; 
 int VM_PROT_WRITE ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 scalar_t__ FUNC8 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*,TYPE_3__*) ; 
 TYPE_3__* FUNC15 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_9__*) ; 
 TYPE_1__* FUNC21 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC26(
	vm_map_t	old_map,
	vm_map_entry_t	old_entry,
	vm_map_t	new_map)
{
	vm_object_t 	object;
	vm_map_entry_t 	new_entry;

	/*
	 *	New sharing code.  New map entry
	 *	references original object.  Internal
	 *	objects use asynchronous copy algorithm for
	 *	future copies.  First make sure we have
	 *	the right object.  If we need a shadow,
	 *	or someone else already has one, then
	 *	make a new shadow and share it.
	 */

	object = FUNC1(old_entry);
	if (old_entry->is_sub_map) {
		FUNC7(old_entry->wired_count == 0);
#ifndef NO_NESTED_PMAP
		if(old_entry->use_pmap) {
			kern_return_t	result;

			result = FUNC12(new_map->pmap,
					   (FUNC6(old_entry))->pmap,
					   (addr64_t)old_entry->vme_start,
					   (addr64_t)old_entry->vme_start,
					   (uint64_t)(old_entry->vme_end - old_entry->vme_start));
			if(result)
				FUNC9("vm_map_fork_share: pmap_nest failed!");
		}
#endif	/* NO_NESTED_PMAP */
	} else if (object == VM_OBJECT_NULL) {
		object = FUNC21((vm_map_size_t)(old_entry->vme_end -
							    old_entry->vme_start));
		FUNC5(old_entry, 0);
		FUNC2(old_entry, object);
		old_entry->use_pmap = TRUE;
//		assert(!old_entry->needs_copy);
	} else if (object->copy_strategy !=
		   MEMORY_OBJECT_COPY_SYMMETRIC) {

		/*
		 *	We are already using an asymmetric
		 *	copy, and therefore we already have
		 *	the right object.
		 */

		FUNC7(! old_entry->needs_copy);
	}
	else if (old_entry->needs_copy ||	/* case 1 */
		 object->shadowed ||		/* case 2 */
		 (!object->true_share && 	/* case 3 */
		  !old_entry->is_shared &&
		  (object->vo_size >
		   (vm_map_size_t)(old_entry->vme_end -
				   old_entry->vme_start)))) {

		/*
		 *	We need to create a shadow.
		 *	There are three cases here.
		 *	In the first case, we need to
		 *	complete a deferred symmetrical
		 *	copy that we participated in.
		 *	In the second and third cases,
		 *	we need to create the shadow so
		 *	that changes that we make to the
		 *	object do not interfere with
		 *	any symmetrical copies which
		 *	have occured (case 2) or which
		 *	might occur (case 3).
		 *
		 *	The first case is when we had
		 *	deferred shadow object creation
		 *	via the entry->needs_copy mechanism.
		 *	This mechanism only works when
		 *	only one entry points to the source
		 *	object, and we are about to create
		 *	a second entry pointing to the
		 *	same object. The problem is that
		 *	there is no way of mapping from
		 *	an object to the entries pointing
		 *	to it. (Deferred shadow creation
		 *	works with one entry because occurs
		 *	at fault time, and we walk from the
		 *	entry to the object when handling
		 *	the fault.)
		 *
		 *	The second case is when the object
		 *	to be shared has already been copied
		 *	with a symmetric copy, but we point
		 *	directly to the object without
		 *	needs_copy set in our entry. (This
		 *	can happen because different ranges
		 *	of an object can be pointed to by
		 *	different entries. In particular,
		 *	a single entry pointing to an object
		 *	can be split by a call to vm_inherit,
		 *	which, combined with task_create, can
		 *	result in the different entries
		 *	having different needs_copy values.)
		 *	The shadowed flag in the object allows
		 *	us to detect this case. The problem
		 *	with this case is that if this object
		 *	has or will have shadows, then we
		 *	must not perform an asymmetric copy
		 *	of this object, since such a copy
		 *	allows the object to be changed, which
		 *	will break the previous symmetrical
		 *	copies (which rely upon the object
		 *	not changing). In a sense, the shadowed
		 *	flag says "don't change this object".
		 *	We fix this by creating a shadow
		 *	object for this object, and sharing
		 *	that. This works because we are free
		 *	to change the shadow object (and thus
		 *	to use an asymmetric copy strategy);
		 *	this is also semantically correct,
		 *	since this object is temporary, and
		 *	therefore a copy of the object is
		 *	as good as the object itself. (This
		 *	is not true for permanent objects,
		 *	since the pager needs to see changes,
		 *	which won't happen if the changes
		 *	are made to a copy.)
		 *
		 *	The third case is when the object
		 *	to be shared has parts sticking
		 *	outside of the entry we're working
		 *	with, and thus may in the future
		 *	be subject to a symmetrical copy.
		 *	(This is a preemptive version of
		 *	case 2.)
		 */
		FUNC3(old_entry,
				  (vm_map_size_t) (old_entry->vme_end -
						   old_entry->vme_start));

		/*
		 *	If we're making a shadow for other than
		 *	copy on write reasons, then we have
		 *	to remove write permission.
		 */

		if (!old_entry->needs_copy &&
		    (old_entry->protection & VM_PROT_WRITE)) {
		        vm_prot_t prot;

			FUNC7(!FUNC11(old_entry->protection));

			prot = old_entry->protection & ~VM_PROT_WRITE;

			FUNC7(!FUNC11(prot));

			if (FUNC8(old_map, FUNC0(old_entry)) && prot)
			        prot |= VM_PROT_EXECUTE;


			if (old_map->mapped_in_other_pmaps) {
				FUNC23(
					FUNC1(old_entry),
					FUNC4(old_entry),
					(old_entry->vme_end -
					 old_entry->vme_start),
					PMAP_NULL,
					old_entry->vme_start,
					prot);
			} else {
				FUNC13(old_map->pmap,
					     old_entry->vme_start,
					     old_entry->vme_end,
					     prot);
			}
		}

		old_entry->needs_copy = FALSE;
		object = FUNC1(old_entry);
	}


	/*
	 *	If object was using a symmetric copy strategy,
	 *	change its copy strategy to the default
	 *	asymmetric copy strategy, which is copy_delay
	 *	in the non-norma case and copy_call in the
	 *	norma case. Bump the reference count for the
	 *	new entry.
	 */

	if(old_entry->is_sub_map) {
		FUNC17(FUNC6(old_entry));
		FUNC18(FUNC6(old_entry));
		FUNC20(FUNC6(old_entry));
	} else {
		FUNC22(object);
		FUNC24(object);
		if (object->copy_strategy == MEMORY_OBJECT_COPY_SYMMETRIC) {
			object->copy_strategy = MEMORY_OBJECT_COPY_DELAY;
		}
		FUNC25(object);
	}

	/*
	 *	Clone the entry, using object ref from above.
	 *	Mark both entries as shared.
	 */

	new_entry = FUNC15(new_map, FALSE); /* Never the kernel
							  * map or descendants */
	FUNC14(new_entry, old_entry);
	old_entry->is_shared = TRUE;
	new_entry->is_shared = TRUE;

	/*
	 * We're dealing with a shared mapping, so the resulting mapping
	 * should inherit some of the original mapping's accounting settings.
	 * "iokit_acct" should have been cleared in vm_map_entry_copy().
	 * "use_pmap" should stay the same as before (if it hasn't been reset
	 * to TRUE when we cleared "iokit_acct").
	 */
	FUNC7(!new_entry->iokit_acct);

	/*
	 *	If old entry's inheritence is VM_INHERIT_NONE,
	 *	the new entry is for corpse fork, remove the
	 *	write permission from the new entry.
	 */
	if (old_entry->inheritance == VM_INHERIT_NONE) {

		new_entry->protection &= ~VM_PROT_WRITE;
		new_entry->max_protection &= ~VM_PROT_WRITE;
	}

	/*
	 *	Insert the entry into the new map -- we
	 *	know we're inserting at the end of the new
	 *	map.
	 */

	FUNC19(new_map, FUNC16(new_map), new_entry,
				VM_MAP_KERNEL_FLAGS_NONE);

	/*
	 *	Update the physical map
	 */

	if (old_entry->is_sub_map) {
		/* Bill Angell pmap support goes here */
	} else {
		FUNC10(new_map->pmap, old_map->pmap, new_entry->vme_start,
			  old_entry->vme_end - old_entry->vme_start,
			  old_entry->vme_start);
	}
}