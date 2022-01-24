#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vm_map_t ;
typedef  scalar_t__ vm_map_offset_t ;
typedef  TYPE_2__* vm_map_entry_t ;
struct TYPE_18__ {int is_nested_map; scalar_t__ lowest_unnestable_start; int /*<<< orphan*/  disable_vmentry_reuse; } ;
struct TYPE_17__ {int is_sub_map; int use_pmap; scalar_t__ vme_start; scalar_t__ vme_end; } ;
struct TYPE_16__ {scalar_t__ pmap; scalar_t__ map_refcnt; scalar_t__ mapped_in_other_pmaps; int /*<<< orphan*/ * first_free; scalar_t__ holelistenabled; int /*<<< orphan*/  hdr; } ;

/* Variables and functions */
 int FALSE ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 TYPE_4__* FUNC3 (TYPE_2__*) ; 
 scalar_t__ VM_MEMORY_SHARED_PMAP ; 
 int /*<<< orphan*/  VM_MEMORY_UNSHARED_PMAP ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ kernel_pmap ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,scalar_t__,scalar_t__,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (char*,long long,long long,long long,long long) ; 
 scalar_t__ FUNC9 (scalar_t__,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,scalar_t__,scalar_t__,TYPE_4__*,scalar_t__) ; 

__attribute__((used)) static void
FUNC13(
	vm_map_t	map,
	vm_map_entry_t	entry,
	vm_map_offset_t	start_unnest,
	vm_map_offset_t	end_unnest)
{
	vm_map_offset_t old_start_unnest = start_unnest;
	vm_map_offset_t old_end_unnest = end_unnest;

	FUNC6(entry->is_sub_map);
	FUNC6(FUNC3(entry) != NULL);
	FUNC6(entry->use_pmap);

	/*
	 * Query the platform for the optimal unnest range.
	 * DRK: There's some duplication of effort here, since
	 * callers may have adjusted the range to some extent. This
	 * routine was introduced to support 1GiB subtree nesting
	 * for x86 platforms, which can also nest on 2MiB boundaries
	 * depending on size/alignment.
	 */
	if (FUNC9(map->pmap, &start_unnest, &end_unnest)) {
		FUNC6(FUNC3(entry)->is_nested_map);
		FUNC6(!FUNC3(entry)->disable_vmentry_reuse);
		FUNC7(map,
				   old_start_unnest,
				   old_end_unnest,
				   FUNC3(entry)->is_nested_map,
				   (entry->vme_start +
				    FUNC3(entry)->lowest_unnestable_start -
				    FUNC2(entry)));
	}

	if (entry->vme_start > start_unnest ||
	    entry->vme_end < end_unnest) {
		FUNC8("vm_map_clip_unnest(0x%llx,0x%llx): "
		      "bad nested entry: start=0x%llx end=0x%llx\n",
		      (long long)start_unnest, (long long)end_unnest,
		      (long long)entry->vme_start, (long long)entry->vme_end);
	}

	if (start_unnest > entry->vme_start) {
		FUNC5(&map->hdr,
				   entry,
				   start_unnest);
		if (map->holelistenabled) {
			FUNC11(map, NULL, FALSE);
		} else {
			FUNC11(map, map->first_free, FALSE);
		}
	}
	if (entry->vme_end > end_unnest) {
		FUNC4(&map->hdr,
				 entry,
				 end_unnest);
		if (map->holelistenabled) {
			FUNC11(map, NULL, FALSE);
		} else {
			FUNC11(map, map->first_free, FALSE);
		}
	}

	FUNC10(map->pmap,
		    entry->vme_start,
		    entry->vme_end - entry->vme_start);
	if ((map->mapped_in_other_pmaps) && (map->map_refcnt)) {
		/* clean up parent map/maps */
		FUNC12(
			map, entry->vme_start,
			entry->vme_end,
			FUNC3(entry),
			FUNC2(entry));
	}
	entry->use_pmap = FALSE;
	if ((map->pmap != kernel_pmap) &&
	    (FUNC0(entry) == VM_MEMORY_SHARED_PMAP)) {
		FUNC1(entry, VM_MEMORY_UNSHARED_PMAP);
	}
}