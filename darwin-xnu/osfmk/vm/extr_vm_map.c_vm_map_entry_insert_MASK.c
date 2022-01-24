#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
typedef  void* vm_prot_t ;
typedef  int /*<<< orphan*/  vm_object_t ;
typedef  int /*<<< orphan*/  vm_object_offset_t ;
typedef  TYPE_2__* vm_map_t ;
typedef  void* vm_map_offset_t ;
typedef  TYPE_3__* vm_map_entry_t ;
typedef  int /*<<< orphan*/  vm_inherit_t ;
typedef  int /*<<< orphan*/  vm_behavior_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  void* boolean_t ;
struct TYPE_22__ {void* vme_start; void* vme_end; unsigned int wired_count; void* vme_atomic; void* vme_resilient_media; void* vme_resilient_codesign; void* iokit_acct; void* pmap_cs_associated; void* used_for_jit; void* superpage_size; void* permanent; void* no_cache; void* zero_wired_pages; void* use_pmap; scalar_t__ user_wired_count; int /*<<< orphan*/  behavior; void* max_protection; void* protection; int /*<<< orphan*/  inheritance; void* needs_wakeup; void* in_transition; void* needs_copy; void* is_sub_map; void* is_shared; void* map_aligned; } ;
struct TYPE_20__ {int /*<<< orphan*/  entries_pageable; } ;
struct TYPE_21__ {int /*<<< orphan*/  size; int /*<<< orphan*/  pmap; void* jit_entry_exists; TYPE_1__ hdr; } ;

/* Variables and functions */
 void* FALSE ; 
 scalar_t__ PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_3__*) ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VM_MAP_KERNEL_FLAGS_NONE ; 
 int FUNC4 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC10 (void*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC12 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,TYPE_3__*,TYPE_3__*,int /*<<< orphan*/ ) ; 

vm_map_entry_t
FUNC15(
	vm_map_t		map,
	vm_map_entry_t		insp_entry,
	vm_map_offset_t		start,
	vm_map_offset_t		end,
	vm_object_t		object,
	vm_object_offset_t	offset,
	boolean_t		needs_copy,
	boolean_t		is_shared,
	boolean_t		in_transition,
	vm_prot_t		cur_protection,
	vm_prot_t		max_protection,
	vm_behavior_t		behavior,
	vm_inherit_t		inheritance,
	unsigned		wired_count,
	boolean_t		no_cache,
	boolean_t		permanent,
	unsigned int		superpage_size,
	boolean_t		clear_map_aligned,
	boolean_t		is_submap,
	boolean_t		used_for_jit,
	int			alias)
{
	vm_map_entry_t	new_entry;

	FUNC7(insp_entry != (vm_map_entry_t)0);
	FUNC13(map);

#if DEVELOPMENT || DEBUG
	vm_object_offset_t	end_offset = 0;
	assertf(!os_add_overflow(end - start, offset, &end_offset), "size 0x%llx, offset 0x%llx caused overflow", (uint64_t)(end - start), offset);
#endif /* DEVELOPMENT || DEBUG */

	new_entry = FUNC12(map, !map->hdr.entries_pageable);

	if (FUNC6(map) != PAGE_SHIFT) {
		new_entry->map_aligned = TRUE;
	} else {
		new_entry->map_aligned = FALSE;
	}
	if (clear_map_aligned &&
	    (! FUNC4(start, FUNC5(map)) ||
	     ! FUNC4(end, FUNC5(map)))) {
		new_entry->map_aligned = FALSE;
	}

	new_entry->vme_start = start;
	new_entry->vme_end = end;
	FUNC7(FUNC10(new_entry->vme_start));
	FUNC7(FUNC10(new_entry->vme_end));
	if (new_entry->map_aligned) {
		FUNC7(FUNC4(new_entry->vme_start,
					   FUNC5(map)));
		FUNC7(FUNC4(new_entry->vme_end,
					   FUNC5(map)));
	}
	FUNC7(new_entry->vme_start < new_entry->vme_end);

	FUNC2(new_entry, object);
	FUNC3(new_entry, offset);
	new_entry->is_shared = is_shared;
	new_entry->is_sub_map = is_submap;
	new_entry->needs_copy = needs_copy;
	new_entry->in_transition = in_transition;
	new_entry->needs_wakeup = FALSE;
	new_entry->inheritance = inheritance;
	new_entry->protection = cur_protection;
	new_entry->max_protection = max_protection;
	new_entry->behavior = behavior;
	new_entry->wired_count = wired_count;
	new_entry->user_wired_count = 0;
	if (is_submap) {
		/*
		 * submap: "use_pmap" means "nested".
		 * default: false.
		 */
		new_entry->use_pmap = FALSE;
	} else {
		/*
		 * object: "use_pmap" means "use pmap accounting" for footprint.
		 * default: true.
		 */
		new_entry->use_pmap = TRUE;
	}
	FUNC1(new_entry, alias);
	new_entry->zero_wired_pages = FALSE;
	new_entry->no_cache = no_cache;
	new_entry->permanent = permanent;
	if (superpage_size)
		new_entry->superpage_size = TRUE;
	else
		new_entry->superpage_size = FALSE;
	if (used_for_jit){
#if CONFIG_EMBEDDED
		if (!(map->jit_entry_exists))
#endif /* CONFIG_EMBEDDED */
		{
			new_entry->used_for_jit = TRUE;
			map->jit_entry_exists = TRUE;

			/* Tell the pmap that it supports JIT. */
			FUNC11(map->pmap);
		}
	} else {
		new_entry->used_for_jit = FALSE;
	}
	new_entry->pmap_cs_associated = FALSE;
	new_entry->iokit_acct = FALSE;
	new_entry->vme_resilient_codesign = FALSE;
	new_entry->vme_resilient_media = FALSE;
	new_entry->vme_atomic = FALSE;

	/*
	 *	Insert the new entry into the list.
	 */

	FUNC14(map, insp_entry, new_entry,
				VM_MAP_KERNEL_FLAGS_NONE);
	map->size += end - start;

	/*
	 *	Update the free space hint and the lookup hint.
	 */

	FUNC0(map, new_entry);
	return new_entry;
}