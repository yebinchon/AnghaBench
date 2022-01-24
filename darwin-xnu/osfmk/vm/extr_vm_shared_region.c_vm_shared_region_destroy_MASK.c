#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_size_t ;
typedef  TYPE_2__* vm_shared_region_t ;
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  TYPE_3__* vm_named_entry_t ;
typedef  TYPE_4__* vm_map_t ;
struct TYPE_16__ {scalar_t__ ip_kobject; } ;
struct TYPE_15__ {int /*<<< orphan*/  slide_object; scalar_t__ slide_info_size; scalar_t__ slide_info_entry; } ;
struct TYPE_14__ {scalar_t__ pmap; } ;
struct TYPE_11__ {TYPE_4__* map; } ;
struct TYPE_13__ {int is_sub_map; TYPE_1__ backing; int /*<<< orphan*/  is_copy; int /*<<< orphan*/  internal; } ;
struct TYPE_12__ {scalar_t__ sr_ref_count; TYPE_6__ sr_slide_info; scalar_t__ sr_timer_call; TYPE_7__* sr_mem_entry; scalar_t__ sr_size; scalar_t__ sr_base_address; int /*<<< orphan*/  sr_slid; int /*<<< orphan*/  sr_persists; int /*<<< orphan*/  sr_64bit; int /*<<< orphan*/  sr_cpu_subtype; int /*<<< orphan*/  sr_cpu_type; struct TYPE_12__* sr_root_dir; } ;

/* Variables and functions */
 TYPE_7__* IPC_PORT_NULL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  kernel_map ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__,scalar_t__) ; 
 TYPE_6__* si ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(
	vm_shared_region_t	shared_region)
{
	vm_named_entry_t	mem_entry;
	vm_map_t		map;

	FUNC1(
		("shared_region: -> destroy(%p) (root=%p,cpu=<%d,%d>,64bit=%d)\n",
		 (void )FUNC2(shared_region),
		 (void )FUNC2(shared_region->sr_root_dir),
		 shared_region->sr_cpu_type,
		 shared_region->sr_cpu_subtype,
		 shared_region->sr_64bit));

	FUNC3(shared_region->sr_ref_count == 0);
	FUNC3(!shared_region->sr_persists);
	FUNC3(!shared_region->sr_slid);

	mem_entry = (vm_named_entry_t) shared_region->sr_mem_entry->ip_kobject;
	FUNC3(mem_entry->is_sub_map);
	FUNC3(!mem_entry->internal);
	FUNC3(!mem_entry->is_copy);
	map = mem_entry->backing.map;

	/*
	 * Clean up the pmap first.  The virtual addresses that were
	 * entered in this possibly "nested" pmap may have different values
	 * than the VM map's min and max offsets, if the VM sub map was
	 * mapped at a non-zero offset in the processes' main VM maps, which
	 * is usually the case, so the clean-up we do in vm_map_destroy() would
	 * not be enough.
	 */
	if (map->pmap) {
		FUNC7(map->pmap,
			    shared_region->sr_base_address,
			    (shared_region->sr_base_address +
			     shared_region->sr_size));
	}

	/*
	 * Release our (one and only) handle on the memory entry.
	 * This will generate a no-senders notification, which will be processed
	 * by ipc_kobject_notify(), which will release the one and only
	 * reference on the memory entry and cause it to be destroyed, along
	 * with the VM sub map and its pmap.
	 */
	FUNC6(shared_region->sr_mem_entry);
	mem_entry = NULL;
	shared_region->sr_mem_entry = IPC_PORT_NULL;

	if (shared_region->sr_timer_call) {
		FUNC8(shared_region->sr_timer_call);
	}

#if 0
	/* 
	 * If slid, free those resources.  We'll want this eventually,
	 * but can't handle it properly today.
	 */
	si = &shared_region->sr_slide_info;
	if (si->slide_info_entry) {
		kmem_free(kernel_map,
			  (vm_offset_t) si->slide_info_entry,
			  (vm_size_t) si->slide_info_size);
		vm_object_deallocate(si->slide_object);
	}
#endif 

	/* release the shared region structure... */
	FUNC4(shared_region, sizeof (*shared_region));

	FUNC0(
		("shared_region: destroy(%p) <-\n",
		 (void *)FUNC2(shared_region)));
	shared_region = NULL;

}