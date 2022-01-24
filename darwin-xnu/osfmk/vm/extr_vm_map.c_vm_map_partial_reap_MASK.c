#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_20__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* vm_map_t ;
typedef  TYPE_3__* vm_map_entry_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
struct TYPE_25__ {int /*<<< orphan*/  vme_end; int /*<<< orphan*/  vme_start; int /*<<< orphan*/  is_sub_map; struct TYPE_25__* vme_next; } ;
struct TYPE_22__ {int /*<<< orphan*/  entries_pageable; } ;
struct TYPE_24__ {TYPE_1__ hdr; int /*<<< orphan*/  max_offset; int /*<<< orphan*/  min_offset; } ;
struct TYPE_23__ {scalar_t__ internal; int ref_count; int /*<<< orphan*/  pager; scalar_t__ resident_page_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_RESOURCE_SHORTAGE ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int /*<<< orphan*/  PMAP_NULL ; 
 scalar_t__ TRUE ; 
 TYPE_20__* FUNC0 (TYPE_3__*) ; 
 TYPE_3__* VM_MAP_ENTRY_NULL ; 
 TYPE_2__* VM_MAP_NULL ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  VM_MAP_REMOVE_NO_PMAP_CLEANUP ; 
 int /*<<< orphan*/  VM_MAP_REMOVE_SAVE_ENTRIES ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 TYPE_3__* FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 

kern_return_t FUNC12(vm_map_t map, unsigned int *reclaimed_resident, unsigned int *reclaimed_compressed)
{
	vm_map_entry_t	entry = VM_MAP_ENTRY_NULL;
	vm_map_entry_t next_entry;
	kern_return_t	kr = KERN_SUCCESS;
	vm_map_t 	zap_map;

	FUNC8(map);

	/*
	 * We use a "zap_map" to avoid having to unlock
	 * the "map" in vm_map_delete().
	 */
	zap_map = FUNC3(PMAP_NULL,
				map->min_offset,
				map->max_offset,
				map->hdr.entries_pageable);

	if (zap_map == VM_MAP_NULL) {
		return KERN_RESOURCE_SHORTAGE;
	}

	FUNC9(zap_map,
			      FUNC1(map));
	FUNC6(zap_map);

	for (entry = FUNC7(map);
	     entry != FUNC10(map);
	     entry = next_entry) {
		next_entry = entry->vme_next;

		if (FUNC0(entry) &&
		    !entry->is_sub_map &&
		    (FUNC0(entry)->internal == TRUE) &&
		    (FUNC0(entry)->ref_count == 1)) {

			*reclaimed_resident += FUNC0(entry)->resident_page_count;
			*reclaimed_compressed += FUNC2(FUNC0(entry)->pager);

			(void)FUNC4(map,
					    entry->vme_start,
					    entry->vme_end,
					    VM_MAP_REMOVE_SAVE_ENTRIES,
					    zap_map);
		}
	}

	FUNC11(map);

        /*
	 * Get rid of the "zap_maps" and all the map entries that
         * they may still contain.
         */
        if (zap_map != VM_MAP_NULL) {
                FUNC5(zap_map, VM_MAP_REMOVE_NO_PMAP_CLEANUP);
                zap_map = VM_MAP_NULL;
        }

	return kr;
}