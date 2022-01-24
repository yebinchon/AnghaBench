#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_map_t ;
typedef  int /*<<< orphan*/  vm_map_offset_t ;
typedef  TYPE_1__* vm_map_entry_t ;
typedef  void* uint64_t ;
typedef  scalar_t__ uint32_t ;
typedef  TYPE_2__* task_t ;
struct proc_regioninfo_internal {scalar_t__ pri_depth; void* pri_size; void* pri_address; scalar_t__ pri_obj_id; scalar_t__ pri_shared_pages_resident; scalar_t__ pri_private_pages_resident; scalar_t__ pri_share_mode; scalar_t__ pri_shadow_depth; scalar_t__ pri_ref_count; scalar_t__ pri_pages_dirtied; scalar_t__ pri_pages_swapped_out; scalar_t__ pri_pages_shared_now_private; scalar_t__ pri_pages_resident; int /*<<< orphan*/  pri_flags; int /*<<< orphan*/  pri_user_tag; int /*<<< orphan*/  pri_user_wired_count; int /*<<< orphan*/  pri_behavior; int /*<<< orphan*/  pri_inheritance; int /*<<< orphan*/  pri_max_protection; int /*<<< orphan*/  pri_protection; int /*<<< orphan*/  pri_offset; } ;
struct TYPE_12__ {scalar_t__ map; } ;
struct TYPE_11__ {scalar_t__ is_sub_map; struct TYPE_11__* vme_next; scalar_t__ vme_start; scalar_t__ vme_end; scalar_t__ is_shared; int /*<<< orphan*/  user_wired_count; int /*<<< orphan*/  behavior; int /*<<< orphan*/  inheritance; int /*<<< orphan*/  max_protection; int /*<<< orphan*/  protection; } ;

/* Variables and functions */
 int /*<<< orphan*/  PROC_REGION_SHARED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ VM_MAP_NULL ; 
 scalar_t__ FUNC2 (TYPE_1__*,uintptr_t*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 TYPE_1__* FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 

int
FUNC11(task_t task, uint64_t arg, struct proc_regioninfo_internal *pinfo, uintptr_t *vnodeaddr, uint32_t  *vid)
{

	vm_map_t map;
	vm_map_offset_t	address = (vm_map_offset_t )arg;
	vm_map_entry_t		tmp_entry;
	vm_map_entry_t		entry;

	FUNC3(task);
	map = task->map;
	if (map == VM_MAP_NULL) 
	{
		FUNC4(task);
		return(0);
	}
	FUNC8(map); 
	FUNC4(task);
	
	FUNC6(map);

	if (!FUNC7(map, address, &tmp_entry)) {
		if ((entry = tmp_entry->vme_next) == FUNC9(map)) {
			FUNC10(map);
			FUNC5(map); 
		   	return(0);
		}
	} else {
		entry = tmp_entry;
	}

	while (entry != FUNC9(map)) {
		*vnodeaddr = 0;
		*vid = 0;

		if (entry->is_sub_map == 0) {
			if (FUNC2(entry, vnodeaddr, vid)) {

				pinfo->pri_offset = FUNC1(entry);
				pinfo->pri_protection = entry->protection;
				pinfo->pri_max_protection = entry->max_protection;
				pinfo->pri_inheritance = entry->inheritance;
				pinfo->pri_behavior = entry->behavior;
				pinfo->pri_user_wired_count = entry->user_wired_count;
				pinfo->pri_user_tag = FUNC0(entry);
				
				if (entry->is_shared)
					pinfo->pri_flags |= PROC_REGION_SHARED;
				
				pinfo->pri_pages_resident = 0;
				pinfo->pri_pages_shared_now_private = 0;
				pinfo->pri_pages_swapped_out = 0;
				pinfo->pri_pages_dirtied = 0;
				pinfo->pri_ref_count = 0;
				pinfo->pri_shadow_depth = 0;
				pinfo->pri_share_mode = 0;
				
				pinfo->pri_private_pages_resident = 0;
				pinfo->pri_shared_pages_resident = 0;
				pinfo->pri_obj_id = 0;
				
				pinfo->pri_address = (uint64_t)entry->vme_start;
				pinfo->pri_size = (uint64_t)(entry->vme_end - entry->vme_start);
				pinfo->pri_depth = 0;
	
				FUNC10(map);
				FUNC5(map); 
				return(1);
			}
		}

		/* Keep searching for a vnode-backed mapping */
		entry = entry->vme_next;
	}

	FUNC10(map);
	FUNC5(map); 
	return(0);
}