#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_prot_t ;
typedef  int /*<<< orphan*/  vm_page_t ;
typedef  TYPE_1__* vm_object_t ;
typedef  TYPE_2__* vm_map_t ;
typedef  scalar_t__ vm_map_offset_t ;
typedef  TYPE_3__* vm_map_entry_t ;
typedef  scalar_t__ vm_fault_return_t ;
typedef  scalar_t__ upl_size_t ;
struct vm_object_fault_info {int /*<<< orphan*/  user_tag; scalar_t__ cluster_size; int /*<<< orphan*/  stealth; int /*<<< orphan*/  no_cache; scalar_t__ hi_offset; scalar_t__ lo_offset; int /*<<< orphan*/  pmap_options; int /*<<< orphan*/  behavior; int /*<<< orphan*/  interruptible; } ;
typedef  scalar_t__ pmap_t ;
typedef  int boolean_t ;
struct TYPE_20__ {scalar_t__ vme_end; scalar_t__ vme_start; scalar_t__ zero_wired_pages; int /*<<< orphan*/  no_cache; int /*<<< orphan*/  use_pmap; scalar_t__ is_sub_map; scalar_t__ iokit_acct; int /*<<< orphan*/  behavior; } ;
struct TYPE_19__ {int /*<<< orphan*/  no_zero_fill; } ;
struct TYPE_18__ {int /*<<< orphan*/  alive; scalar_t__ phys_contiguous; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PMAP_OPTIONS_ALT_ACCT ; 
 int /*<<< orphan*/  THREAD_UNINT ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 TYPE_1__* FUNC2 (TYPE_3__*) ; 
 scalar_t__ FUNC3 (TYPE_3__*) ; 
 scalar_t__ VM_FAULT_MEMORY_ERROR ; 
 scalar_t__ VM_FAULT_RETRY ; 
 scalar_t__ VM_FAULT_SUCCESS ; 
 int /*<<< orphan*/  VM_KERN_MEMORY_NONE ; 
 TYPE_1__* VM_OBJECT_NULL ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VM_PAGE_NULL ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VM_PROT_NONE ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XPR_VM_FAULT ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 TYPE_1__* kernel_object ; 
 scalar_t__ FUNC10 (scalar_t__,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (unsigned int) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,struct vm_object_fault_info*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_1__*) ; 
 scalar_t__ vm_page_fictitious_addr ; 
 scalar_t__ vm_page_guard_addr ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC26(
	vm_map_t	map,
	vm_map_entry_t	entry,
	boolean_t	deallocate,
	pmap_t		pmap,
	vm_map_offset_t	pmap_addr)
{
	vm_map_offset_t	va;
	vm_map_offset_t	end_addr = entry->vme_end;
	vm_object_t		object;
	struct vm_object_fault_info fault_info = {};
	unsigned int    unwired_pages;

	object = (entry->is_sub_map) ? VM_OBJECT_NULL : FUNC2(entry);

	/*
	 * If it's marked phys_contiguous, then vm_fault_wire() didn't actually
	 * do anything since such memory is wired by default.  So we don't have
	 * anything to undo here.
	 */

	if (object != VM_OBJECT_NULL && object->phys_contiguous)
		return;

	fault_info.interruptible = THREAD_UNINT;
	fault_info.behavior = entry->behavior;
	fault_info.user_tag = FUNC1(entry);
	if (entry->iokit_acct ||
	    (!entry->is_sub_map && !entry->use_pmap)) {
		fault_info.pmap_options |= PMAP_OPTIONS_ALT_ACCT;
	}
	fault_info.lo_offset = FUNC3(entry);
	fault_info.hi_offset = (entry->vme_end - entry->vme_start) + FUNC3(entry);
	fault_info.no_cache = entry->no_cache;
	fault_info.stealth = TRUE;

	unwired_pages = 0;

	/*
	 *	Since the pages are wired down, we must be able to
	 *	get their mappings from the physical map system.
	 */

	for (va = entry->vme_start; va < end_addr; va += PAGE_SIZE) {

		if (object == VM_OBJECT_NULL) {
			if (pmap) {
				FUNC12(pmap,
						   pmap_addr + (va - entry->vme_start), FALSE);
			}
			(void) FUNC17(map, va, VM_PROT_NONE,
					TRUE, VM_KERN_MEMORY_NONE, THREAD_UNINT, pmap, pmap_addr);
		} else {
		 	vm_prot_t	prot;
			vm_page_t	result_page;
			vm_page_t	top_page;
			vm_object_t	result_object;
			vm_fault_return_t result;

			/* cap cluster size at maximum UPL size */
			upl_size_t cluster_size;
			if (FUNC10(end_addr, va, &cluster_size)) {
				cluster_size = 0 - (upl_size_t)PAGE_SIZE;
			}
			fault_info.cluster_size = cluster_size;

			do {
				prot = VM_PROT_NONE;

				FUNC20(object);
				FUNC21(object);
				FUNC8(XPR_VM_FAULT,
					"vm_fault_unwire -> vm_fault_page\n",
					0,0,0,0,0);
				result_page = VM_PAGE_NULL;
			 	result = FUNC19(
					object,
					(FUNC3(entry) +
					 (va - entry->vme_start)),
					VM_PROT_NONE, TRUE,
					FALSE, /* page not looked up */
					&prot, &result_page, &top_page,
					(int *)0,
					NULL, map->no_zero_fill,
					FALSE, &fault_info);
			} while (result == VM_FAULT_RETRY);

			/*
			 * If this was a mapping to a file on a device that has been forcibly
			 * unmounted, then we won't get a page back from vm_fault_page().  Just
			 * move on to the next one in case the remaining pages are mapped from
			 * different objects.  During a forced unmount, the object is terminated
			 * so the alive flag will be false if this happens.  A forced unmount will
			 * will occur when an external disk is unplugged before the user does an
			 * eject, so we don't want to panic in that situation.
			 */

			if (result == VM_FAULT_MEMORY_ERROR && !object->alive)
				continue;

			if (result == VM_FAULT_MEMORY_ERROR &&
			    object == kernel_object) {
				/*
				 * This must have been allocated with
				 * KMA_KOBJECT and KMA_VAONLY and there's
				 * no physical page at this offset.
				 * We're done (no page to free).
				 */
				FUNC9(deallocate);
				continue;
			}

			if (result != VM_FAULT_SUCCESS)
				FUNC11("vm_fault_unwire: failure");

			result_object = FUNC6(result_page);

			if (deallocate) {
				FUNC9(FUNC5(result_page) !=
				       vm_page_fictitious_addr);
				FUNC13(FUNC5(result_page));
				if (FUNC7(result_page)) {
					unwired_pages++;
				}
				FUNC4(result_page);
			} else {
				if ((pmap) && (FUNC5(result_page) != vm_page_guard_addr))
					FUNC12(pmap,
					    pmap_addr + (va - entry->vme_start), FALSE);


				if (FUNC7(result_page)) {
					FUNC22();
					FUNC24(result_page, TRUE);
					FUNC23();
					unwired_pages++;
				}
				if(entry->zero_wired_pages) {
					FUNC15(FUNC5(result_page));
					entry->zero_wired_pages = FALSE;
				}

				FUNC0(result_page);
			}
			FUNC18(result_object, top_page);
		}
	}

	/*
	 *	Inform the physical mapping system that the range
	 *	of addresses may fault, so that page tables and
	 *	such may be unwired themselves.
	 */

	FUNC14(pmap, pmap_addr,
		pmap_addr + (end_addr - entry->vme_start), TRUE);

	if (kernel_object == object) {
	    FUNC25(fault_info.user_tag, -FUNC16(unwired_pages));
	}
}