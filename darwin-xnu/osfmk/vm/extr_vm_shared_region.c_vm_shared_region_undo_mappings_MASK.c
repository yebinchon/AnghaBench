#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* vm_shared_region_t ;
typedef  TYPE_3__* vm_named_entry_t ;
typedef  int /*<<< orphan*/ * vm_map_t ;
struct shared_file_mapping_np {scalar_t__ sfm_size; scalar_t__ sfm_address; int /*<<< orphan*/  sfm_init_prot; int /*<<< orphan*/  sfm_max_prot; scalar_t__ sfm_file_offset; } ;
typedef  scalar_t__ mach_vm_offset_t ;
typedef  scalar_t__ kern_return_t ;
typedef  TYPE_4__* ipc_port_t ;
typedef  int /*<<< orphan*/  event_t ;
typedef  int boolean_t ;
struct TYPE_10__ {scalar_t__ ip_kobject; } ;
struct TYPE_7__ {int /*<<< orphan*/ * map; } ;
struct TYPE_9__ {TYPE_1__ backing; } ;
struct TYPE_8__ {int sr_ref_count; int sr_mapping_in_progress; scalar_t__ sr_base_address; TYPE_4__* sr_mem_entry; } ;

/* Variables and functions */
 void* FALSE ; 
 scalar_t__ KERN_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  THREAD_UNINT ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 

void
FUNC11(
	vm_map_t sr_map,
	mach_vm_offset_t sr_base_address,
	struct shared_file_mapping_np *mappings,
	unsigned int mappings_count)
{
	unsigned int		j = 0;
	vm_shared_region_t	shared_region = NULL;
	boolean_t		reset_shared_region_state = FALSE;

	shared_region = FUNC7(FUNC2());
	if (shared_region == NULL) {
		FUNC4("Failed to undo mappings because of NULL shared region.\n");
		return;
	}
	

	if (sr_map == NULL) {
		ipc_port_t		sr_handle;
		vm_named_entry_t	sr_mem_entry;

		FUNC8();
		FUNC1(shared_region->sr_ref_count > 1);

		while (shared_region->sr_mapping_in_progress) {
			/* wait for our turn... */
			FUNC9(&shared_region->sr_mapping_in_progress,
					       THREAD_UNINT);
		}
		FUNC1(! shared_region->sr_mapping_in_progress);
		FUNC1(shared_region->sr_ref_count > 1);
		/* let others know we're working in this shared region */
		shared_region->sr_mapping_in_progress = TRUE;

		FUNC10();

		reset_shared_region_state = TRUE;

		/* no need to lock because this data is never modified... */
		sr_handle = shared_region->sr_mem_entry;
		sr_mem_entry = (vm_named_entry_t) sr_handle->ip_kobject;
		sr_map = sr_mem_entry->backing.map;
		sr_base_address = shared_region->sr_base_address;
	}
	/*
	 * Undo the mappings we've established so far.
	 */
	for (j = 0; j < mappings_count; j++) {
		kern_return_t kr2;

		if (mappings[j].sfm_size == 0) {
			/*
			 * We didn't establish this
			 * mapping, so nothing to undo.
			 */
			continue;
		}
		FUNC0(
			("shared_region: mapping[%d]: "
			 "address:0x%016llx "
			 "size:0x%016llx "
			 "offset:0x%016llx "
			 "maxprot:0x%x prot:0x%x: "
			 "undoing...\n",
			 j,
			 (long long)mappings[j].sfm_address,
			 (long long)mappings[j].sfm_size,
			 (long long)mappings[j].sfm_file_offset,
			 mappings[j].sfm_max_prot,
			 mappings[j].sfm_init_prot));
		kr2 = FUNC3(
			sr_map,
			(mappings[j].sfm_address -
			 sr_base_address),
			mappings[j].sfm_size);
		FUNC1(kr2 == KERN_SUCCESS);
	}

	if (reset_shared_region_state) {
		FUNC8();
		FUNC1(shared_region->sr_ref_count > 1);
		FUNC1(shared_region->sr_mapping_in_progress);
		/* we're done working on that shared region */
		shared_region->sr_mapping_in_progress = FALSE;
		FUNC5((event_t) &shared_region->sr_mapping_in_progress);
		FUNC10();
		reset_shared_region_state = FALSE;
	}

	FUNC6(shared_region);
}