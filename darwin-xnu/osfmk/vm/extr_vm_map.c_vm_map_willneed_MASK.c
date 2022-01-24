#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_size_t ;
typedef  TYPE_1__* vm_object_t ;
typedef  scalar_t__ vm_object_size_t ;
typedef  scalar_t__ vm_object_offset_t ;
typedef  int /*<<< orphan*/  vm_map_t ;
typedef  scalar_t__ vm_map_offset_t ;
typedef  TYPE_2__* vm_map_entry_t ;
struct vm_object_fault_info {int /*<<< orphan*/  pmap_options; int /*<<< orphan*/  user_tag; scalar_t__ hi_offset; scalar_t__ lo_offset; scalar_t__ cluster_size; int /*<<< orphan*/  stealth; int /*<<< orphan*/  behavior; int /*<<< orphan*/  interruptible; } ;
typedef  int /*<<< orphan*/  memory_object_t ;
typedef  int /*<<< orphan*/  memory_object_fault_info_t ;
typedef  scalar_t__ kern_return_t ;
struct TYPE_16__ {scalar_t__ vme_start; scalar_t__ vme_end; int protection; struct TYPE_16__* vme_next; int /*<<< orphan*/  use_pmap; int /*<<< orphan*/  is_sub_map; scalar_t__ iokit_acct; } ;
struct TYPE_15__ {scalar_t__ paging_offset; int /*<<< orphan*/  pager; } ;

/* Variables and functions */
 scalar_t__ KERN_INVALID_ADDRESS ; 
 scalar_t__ KERN_SUCCESS ; 
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  PMAP_OPTIONS_ALT_ACCT ; 
 int /*<<< orphan*/  THREAD_UNINT ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  VM_BEHAVIOR_SEQUENTIAL ; 
 TYPE_1__* VM_OBJECT_NULL ; 
 int VM_PROT_READ ; 
 TYPE_1__* FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,TYPE_2__**) ; 
 TYPE_2__* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 

__attribute__((used)) static kern_return_t
FUNC14(
	vm_map_t	map,
	vm_map_offset_t	start,
	vm_map_offset_t	end
)
{
	vm_map_entry_t 			entry;
	vm_object_t			object;
	memory_object_t			pager;
	struct vm_object_fault_info	fault_info = {};
	kern_return_t			kr;
	vm_object_size_t		len;
	vm_object_offset_t		offset;

	fault_info.interruptible = THREAD_UNINT;	/* ignored value */
	fault_info.behavior      = VM_BEHAVIOR_SEQUENTIAL;
	fault_info.stealth	 = TRUE;

	/*
	 * The MADV_WILLNEED operation doesn't require any changes to the
	 * vm_map_entry_t's, so the read lock is sufficient.
	 */

	FUNC5(map);

	/*
	 * The madvise semantics require that the address range be fully
	 * allocated with no holes.  Otherwise, we're required to return
	 * an error.
	 */

	if (! FUNC7(map, start, end, &entry)) {
		FUNC9(map);
		return KERN_INVALID_ADDRESS;
	}

	/*
	 * Examine each vm_map_entry_t in the range.
	 */
	for (; entry != FUNC8(map) && start < end; ) {

		/*
		 * The first time through, the start address could be anywhere
		 * within the vm_map_entry we found.  So adjust the offset to
		 * correspond.  After that, the offset will always be zero to
		 * correspond to the beginning of the current vm_map_entry.
		 */
		offset = (start - entry->vme_start) + FUNC2(entry);

		/*
		 * Set the length so we don't go beyond the end of the
		 * map_entry or beyond the end of the range we were given.
		 * This range could span also multiple map entries all of which
		 * map different files, so make sure we only do the right amount
		 * of I/O for each object.  Note that it's possible for there
		 * to be multiple map entries all referring to the same object
		 * but with different page permissions, but it's not worth
		 * trying to optimize that case.
		 */
		len = FUNC0(entry->vme_end - start, end - start);

		if ((vm_size_t) len != len) {
			/* 32-bit overflow */
			len = (vm_size_t) (0 - PAGE_SIZE);
		}
		fault_info.cluster_size = (vm_size_t) len;
		fault_info.lo_offset    = offset;
		fault_info.hi_offset    = offset + len;
		fault_info.user_tag     = FUNC1(entry);
		fault_info.pmap_options = 0;
		if (entry->iokit_acct ||
		    (!entry->is_sub_map && !entry->use_pmap)) {
			fault_info.pmap_options |= PMAP_OPTIONS_ALT_ACCT;
		}

		/*
		 * If there's no read permission to this mapping, then just
		 * skip it.
		 */
		if ((entry->protection & VM_PROT_READ) == 0) {
			entry = entry->vme_next;
			start = entry->vme_start;
			continue;
		}

		/*
		 * Find the file object backing this map entry.  If there is
		 * none, then we simply ignore the "will need" advice for this
		 * entry and go on to the next one.
		 */
		if ((object = FUNC3(entry)) == VM_OBJECT_NULL) {
			entry = entry->vme_next;
			start = entry->vme_start;
			continue;
		}

		/*
		 * The data_request() could take a long time, so let's
		 * release the map lock to avoid blocking other threads.
		 */
		FUNC9(map);

		FUNC11(object);
		pager = object->pager;
		FUNC13(object);

		/*
		 * Get the data from the object asynchronously.
		 *
		 * Note that memory_object_data_request() places limits on the
		 * amount of I/O it will do.  Regardless of the len we
		 * specified, it won't do more than MAX_UPL_TRANSFER_BYTES and it
		 * silently truncates the len to that size.  This isn't
		 * necessarily bad since madvise shouldn't really be used to
		 * page in unlimited amounts of data.  Other Unix variants
		 * limit the willneed case as well.  If this turns out to be an
		 * issue for developers, then we can always adjust the policy
		 * here and still be backwards compatible since this is all
		 * just "advice".
		 */
		kr = FUNC4(
			pager,
			offset + object->paging_offset,
			0,	/* ignored */
			VM_PROT_READ,
			(memory_object_fault_info_t)&fault_info);

		FUNC10(object);
		FUNC12(object);
		FUNC13(object);

		/*
		 * If we couldn't do the I/O for some reason, just give up on
		 * the madvise.  We still return success to the user since
		 * madvise isn't supposed to fail when the advice can't be
		 * taken.
		 */
		if (kr != KERN_SUCCESS) {
			return KERN_SUCCESS;
		}

		start += len;
		if (start >= end) {
			/* done */
			return KERN_SUCCESS;
		}

		/* look up next entry */
		FUNC5(map);
		if (! FUNC6(map, start, &entry)) {
			/*
			 * There's a new hole in the address range.
			 */
			FUNC9(map);
			return KERN_INVALID_ADDRESS;
		}
	}

	FUNC9(map);
	return KERN_SUCCESS;
}