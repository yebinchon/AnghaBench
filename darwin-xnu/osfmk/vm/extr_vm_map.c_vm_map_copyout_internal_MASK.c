#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_63__   TYPE_5__ ;
typedef  struct TYPE_62__   TYPE_4__ ;
typedef  struct TYPE_61__   TYPE_3__ ;
typedef  struct TYPE_60__   TYPE_2__ ;
typedef  struct TYPE_59__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zone_t ;
typedef  int /*<<< orphan*/  vm_prot_t ;
typedef  TYPE_3__* vm_page_t ;
typedef  int /*<<< orphan*/  vm_object_t ;
typedef  scalar_t__ vm_object_offset_t ;
typedef  TYPE_4__* vm_map_t ;
typedef  scalar_t__ vm_map_size_t ;
typedef  scalar_t__ vm_map_offset_t ;
typedef  TYPE_5__* vm_map_entry_t ;
typedef  TYPE_5__* vm_map_copy_t ;
typedef  scalar_t__ vm_map_address_t ;
typedef  int /*<<< orphan*/  vm_inherit_t ;
struct vm_object_fault_info {int /*<<< orphan*/  pmap_options; int /*<<< orphan*/  user_tag; } ;
typedef  scalar_t__ kern_return_t ;
typedef  int /*<<< orphan*/  event_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_60__ {scalar_t__ entries_pageable; } ;
struct TYPE_63__ {scalar_t__ size; scalar_t__ type; scalar_t__ offset; scalar_t__ vme_start; scalar_t__ vme_end; scalar_t__ wired_count; void* use_pmap; scalar_t__ is_sub_map; scalar_t__ iokit_acct; int /*<<< orphan*/  protection; int /*<<< orphan*/  behavior; int /*<<< orphan*/  max_protection; int /*<<< orphan*/  inheritance; void* map_aligned; struct TYPE_63__* vme_next; scalar_t__ from_reserved_zone; TYPE_2__ cpy_hdr; int /*<<< orphan*/  cpy_object; } ;
struct TYPE_59__ {scalar_t__ entries_pageable; } ;
struct TYPE_62__ {scalar_t__ disable_vmentry_reuse; scalar_t__ max_offset; scalar_t__ min_offset; int /*<<< orphan*/  size; int /*<<< orphan*/  pmap; TYPE_1__ hdr; scalar_t__ holelistenabled; int /*<<< orphan*/  holes_list; scalar_t__ wait_for_space; TYPE_5__* first_free; } ;
struct TYPE_61__ {scalar_t__ vmp_absent; } ;

/* Variables and functions */
 TYPE_5__* FUNC0 (int /*<<< orphan*/ ) ; 
 int DBG_CACHE_HIT_FAULT ; 
 void* FALSE ; 
 scalar_t__ KERN_FAILURE ; 
 scalar_t__ KERN_NO_SPACE ; 
 scalar_t__ KERN_SUCCESS ; 
 scalar_t__ PAGE_SHIFT ; 
 scalar_t__ PAGE_SIZE ; 
 scalar_t__ PAGE_SIZE_64 ; 
 int /*<<< orphan*/  PMAP_OPTIONS_ALT_ACCT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,TYPE_5__*) ; 
 int /*<<< orphan*/  THREAD_CONTINUE_NULL ; 
 int /*<<< orphan*/  THREAD_INTERRUPTIBLE ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 scalar_t__ FUNC4 (TYPE_5__*) ; 
 int /*<<< orphan*/  VM_BEHAVIOR_DEFAULT ; 
 int /*<<< orphan*/  VM_FLAGS_ANYWHERE ; 
 int /*<<< orphan*/  VM_INHERIT_DEFAULT ; 
 int /*<<< orphan*/  VM_KERN_MEMORY_NONE ; 
 scalar_t__ VM_MAP_COPY_KERNEL_BUFFER ; 
 TYPE_5__* VM_MAP_COPY_NULL ; 
 scalar_t__ VM_MAP_COPY_OBJECT ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,TYPE_5__*,scalar_t__) ; 
 int /*<<< orphan*/  VM_MAP_KERNEL_FLAGS_NONE ; 
 int FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 
 scalar_t__ FUNC9 (TYPE_4__*) ; 
 TYPE_3__* VM_PAGE_NULL ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  VM_PROT_ALL ; 
 int /*<<< orphan*/  VM_PROT_DEFAULT ; 
 int /*<<< orphan*/  VM_PROT_EXECUTE ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC15 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*,...) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_3__*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,struct vm_object_fault_info*,int /*<<< orphan*/ *,int*) ; 
 TYPE_5__* FUNC20 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_5__*,TYPE_5__*,TYPE_5__*) ; 
 TYPE_5__* FUNC22 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_4__*,TYPE_5__*,TYPE_5__*) ; 
 TYPE_5__* FUNC24 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_4__*,TYPE_5__*,TYPE_5__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC26 (TYPE_5__*) ; 
 int /*<<< orphan*/  vm_map_copy_zone ; 
 scalar_t__ FUNC27 (TYPE_4__*,scalar_t__*,TYPE_5__*,scalar_t__,void*,scalar_t__) ; 
 scalar_t__ FUNC28 (TYPE_4__*,scalar_t__*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (TYPE_5__*,TYPE_5__*) ; 
 int /*<<< orphan*/  vm_map_entry_reserved_zone ; 
 int /*<<< orphan*/  vm_map_entry_zone ; 
 int /*<<< orphan*/  FUNC30 (TYPE_4__*) ; 
 scalar_t__ FUNC31 (TYPE_4__*,scalar_t__,TYPE_5__**) ; 
 scalar_t__ FUNC32 (TYPE_4__*) ; 
 scalar_t__ FUNC33 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC34 (TYPE_5__*,TYPE_5__*) ; 
 TYPE_5__* FUNC35 (TYPE_4__*) ; 
 scalar_t__ FUNC36 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC37 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC38 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC39 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC40 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC41 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC42 (int /*<<< orphan*/ ,TYPE_5__*) ; 

kern_return_t
FUNC43(
	vm_map_t		dst_map,
	vm_map_address_t	*dst_addr,	/* OUT */
	vm_map_copy_t		copy,
	vm_map_size_t		copy_size,
	boolean_t		consume_on_success,
	vm_prot_t		cur_protection,
	vm_prot_t		max_protection,
	vm_inherit_t		inheritance)
{
	vm_map_size_t		size;
	vm_map_size_t		adjustment;
	vm_map_offset_t		start;
	vm_object_offset_t	vm_copy_start;
	vm_map_entry_t		last;
	vm_map_entry_t		entry;
	vm_map_entry_t		hole_entry;

	/*
	 *	Check for null copy object.
	 */

	if (copy == VM_MAP_COPY_NULL) {
		*dst_addr = 0;
		return(KERN_SUCCESS);
	}

	if (copy->size != copy_size) {
		*dst_addr = 0;
		return KERN_FAILURE;
	}

	/*
	 *	Check for special copy object, created
	 *	by vm_map_copyin_object.
	 */

	if (copy->type == VM_MAP_COPY_OBJECT) {
		vm_object_t 		object = copy->cpy_object;
		kern_return_t 		kr;
		vm_object_offset_t	offset;

		offset = FUNC39(copy->offset);
		size = FUNC33((copy_size +
					  (vm_map_size_t)(copy->offset -
							  offset)),
					 FUNC8(dst_map));
		*dst_addr = 0;
		kr = FUNC28(dst_map, dst_addr, size,
				  (vm_map_offset_t) 0, VM_FLAGS_ANYWHERE,
				  VM_MAP_KERNEL_FLAGS_NONE,
				  VM_KERN_MEMORY_NONE,
				  object, offset, FALSE,
				  VM_PROT_DEFAULT, VM_PROT_ALL,
				  VM_INHERIT_DEFAULT);
		if (kr != KERN_SUCCESS)
			return(kr);
		/* Account for non-pagealigned copy object */
		*dst_addr += (vm_map_offset_t)(copy->offset - offset);
		if (consume_on_success)
			FUNC42(vm_map_copy_zone, copy);
		return(KERN_SUCCESS);
	}

	/*
	 *	Check for special kernel buffer allocated
	 *	by new_ipc_kmsg_copyin.
	 */

	if (copy->type == VM_MAP_COPY_KERNEL_BUFFER) {
		return FUNC27(dst_map, dst_addr,
						    copy, copy_size, FALSE,
						    consume_on_success);
	}


	/*
	 *	Find space for the data
	 */

	vm_copy_start = FUNC36((vm_map_size_t)copy->offset,
					  FUNC5(copy));
	size = FUNC33((vm_map_size_t)copy->offset + copy_size,
				 FUNC5(copy))
		- vm_copy_start;


StartAgain: ;

	FUNC30(dst_map);
	if( dst_map->disable_vmentry_reuse == TRUE) {
		FUNC6(dst_map, entry, start);
		last = entry;
	} else {
		if (dst_map->holelistenabled) {
			hole_entry = FUNC0(dst_map->holes_list);

			if (hole_entry == NULL) {
				/*
				 * No more space in the map?
				 */
				FUNC37(dst_map);
				return(KERN_NO_SPACE);
			}

			last = hole_entry;
			start = last->vme_start;
		} else {
			FUNC11(FUNC13(dst_map));
			start = ((last = dst_map->first_free) == FUNC35(dst_map)) ?
			FUNC32(dst_map) : last->vme_end;
		}
		start = FUNC33(start,
					  FUNC8(dst_map));
	}

	while (TRUE) {
		vm_map_entry_t	next = last->vme_next;
		vm_map_offset_t	end = start + size;

		if ((end > dst_map->max_offset) || (end < start)) {
			if (dst_map->wait_for_space) {
				if (size <= (dst_map->max_offset - dst_map->min_offset)) {
					FUNC12((event_t) dst_map,
						    THREAD_INTERRUPTIBLE);
					FUNC37(dst_map);
					FUNC18(THREAD_CONTINUE_NULL);
					goto StartAgain;
				}
			}
			FUNC37(dst_map);
			return(KERN_NO_SPACE);
		}

		if (dst_map->holelistenabled) {
			if (last->vme_end >= end)
				break;
		} else {
			/*
			 *	If there are no more entries, we must win.
			 *
			 *	OR
			 *
			 *	If there is another entry, it must be
			 *	after the end of the potential new region.
			 */

			if (next == FUNC35(dst_map))
				break;

			if (next->vme_start >= end)
				break;
		}

		last = next;

		if (dst_map->holelistenabled) {
			if (last == FUNC0(dst_map->holes_list)) {
				/*
				 * Wrapped around
				 */
				FUNC37(dst_map);
				return(KERN_NO_SPACE);
			}
			start = last->vme_start;
		} else {
			start = last->vme_end;
		}
		start = FUNC33(start,
					  FUNC8(dst_map));
	}

	if (dst_map->holelistenabled) {
		if (FUNC31(dst_map, last->vme_start, &last)) {
			FUNC16("Found an existing entry (%p) instead of potential hole at address: 0x%llx.\n", last, (unsigned long long)last->vme_start);
		}
	}


	adjustment = start - vm_copy_start;
	if (! consume_on_success) {
		/*
		 * We're not allowed to consume "copy", so we'll have to
		 * copy its map entries into the destination map below.
		 * No need to re-allocate map entries from the correct
		 * (pageable or not) zone, since we'll get new map entries
		 * during the transfer.
		 * We'll also adjust the map entries's "start" and "end"
		 * during the transfer, to keep "copy"'s entries consistent
		 * with its "offset".
		 */
		goto after_adjustments;
	}

	/*
	 *	Since we're going to just drop the map
	 *	entries from the copy into the destination
	 *	map, they must come from the same pool.
	 */

	if (copy->cpy_hdr.entries_pageable != dst_map->hdr.entries_pageable) {
		/*
		 * Mismatches occur when dealing with the default
		 * pager.
		 */
		zone_t		old_zone;
		vm_map_entry_t	next, new;

		/*
		 * Find the zone that the copies were allocated from
		 */

		entry = FUNC22(copy);

		/*
		 * Reinitialize the copy so that vm_map_copy_entry_link
		 * will work.
		 */
		FUNC34(copy, entry);
		copy->cpy_hdr.entries_pageable = dst_map->hdr.entries_pageable;

		/*
		 * Copy each entry.
		 */
		while (entry != FUNC26(copy)) {
			new = FUNC20(copy, !copy->cpy_hdr.entries_pageable);
			FUNC29(new, entry);
			FUNC11(!new->iokit_acct);
			if (new->is_sub_map) {
				/* clr address space specifics */
				new->use_pmap = FALSE;
			}
			FUNC21(copy,
					       FUNC24(copy),
					       new);
			next = entry->vme_next;
			old_zone = entry->from_reserved_zone ? vm_map_entry_reserved_zone : vm_map_entry_zone;
			FUNC42(old_zone, entry);
			entry = next;
		}
	}

	/*
	 *	Adjust the addresses in the copy chain, and
	 *	reset the region attributes.
	 */

	for (entry = FUNC22(copy);
	     entry != FUNC26(copy);
	     entry = entry->vme_next) {
		if (FUNC9(dst_map) == PAGE_SHIFT) {
			/*
			 * We're injecting this copy entry into a map that
			 * has the standard page alignment, so clear
			 * "map_aligned" (which might have been inherited
			 * from the original map entry).
			 */
			entry->map_aligned = FALSE;
		}

		entry->vme_start += adjustment;
		entry->vme_end += adjustment;

		if (entry->map_aligned) {
			FUNC11(FUNC7(entry->vme_start,
						   FUNC8(dst_map)));
			FUNC11(FUNC7(entry->vme_end,
						   FUNC8(dst_map)));
		}

		entry->inheritance = VM_INHERIT_DEFAULT;
		entry->protection = VM_PROT_DEFAULT;
		entry->max_protection = VM_PROT_ALL;
		entry->behavior = VM_BEHAVIOR_DEFAULT;

		/*
		 * If the entry is now wired,
		 * map the pages into the destination map.
		 */
		if (entry->wired_count != 0) {
			vm_map_offset_t va;
			vm_object_offset_t	 offset;
			vm_object_t object;
			vm_prot_t prot;
			int	type_of_fault;

			object = FUNC3(entry);
			offset = FUNC4(entry);
			va = entry->vme_start;

			FUNC17(dst_map->pmap,
				      entry->vme_start,
				      entry->vme_end,
				      TRUE);

			while (va < entry->vme_end) {
				vm_page_t	m;
				struct vm_object_fault_info fault_info = {};

				/*
				 * Look up the page in the object.
				 * Assert that the page will be found in the
				 * top object:
				 * either
				 *	the object was newly created by
				 *	vm_object_copy_slowly, and has
				 *	copies of all of the pages from
				 *	the source object
				 * or
				 *	the object was moved from the old
				 *	map entry; because the old map
				 *	entry was wired, all of the pages
				 *	were in the top-level object.
				 *	(XXX not true if we wire pages for
				 *	 reading)
				 */
				FUNC38(object);

				m = FUNC41(object, offset);
				if (m == VM_PAGE_NULL || !FUNC10(m) ||
				    m->vmp_absent)
					FUNC16("vm_map_copyout: wiring %p", m);

				prot = entry->protection;

				if (FUNC15(dst_map, FUNC2(entry)) &&
				    prot)
				        prot |= VM_PROT_EXECUTE;

				type_of_fault = DBG_CACHE_HIT_FAULT;

				fault_info.user_tag = FUNC2(entry);
				fault_info.pmap_options = 0;
				if (entry->iokit_acct ||
				    (!entry->is_sub_map && !entry->use_pmap)) {
					fault_info.pmap_options |= PMAP_OPTIONS_ALT_ACCT;
				}

				FUNC19(m,
					       dst_map->pmap,
					       va,
					       prot,
					       prot,
					       FUNC10(m),
					       FALSE, /* change_wiring */
					       VM_KERN_MEMORY_NONE, /* tag - not wiring */
					       &fault_info,
					       NULL,  /* need_retry */
					       &type_of_fault);

				FUNC40(object);

				offset += PAGE_SIZE_64;
				va += PAGE_SIZE;
			}
		}
	}

after_adjustments:

	/*
	 *	Correct the page alignment for the result
	 */

	*dst_addr = start + (copy->offset - vm_copy_start);

#if KASAN
	kasan_notify_address(*dst_addr, size);
#endif

	/*
	 *	Update the hints and the map size
	 */

	if (consume_on_success) {
		FUNC1(dst_map, FUNC24(copy));
	} else {
		FUNC1(dst_map, last);
	}

	dst_map->size += size;

	/*
	 *	Link in the copy
	 */

	if (consume_on_success) {
		FUNC23(dst_map, last, copy);
	} else {
		FUNC25(dst_map, last, copy, adjustment,
				  cur_protection, max_protection,
				  inheritance);
	}

	FUNC37(dst_map);

	/*
	 * XXX	If wiring_required, call vm_map_pageable
	 */

	return(KERN_SUCCESS);
}