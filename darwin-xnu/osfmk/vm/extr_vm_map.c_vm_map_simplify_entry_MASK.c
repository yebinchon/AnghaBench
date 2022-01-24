#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vm_map_t ;
typedef  TYPE_2__* vm_map_entry_t ;
struct TYPE_22__ {scalar_t__ vme_end; scalar_t__ vme_start; scalar_t__ is_sub_map; scalar_t__ behavior; scalar_t__ needs_copy; scalar_t__ protection; scalar_t__ max_protection; scalar_t__ inheritance; scalar_t__ use_pmap; scalar_t__ no_cache; scalar_t__ permanent; scalar_t__ map_aligned; scalar_t__ zero_wired_pages; scalar_t__ used_for_jit; scalar_t__ pmap_cs_associated; scalar_t__ iokit_acct; scalar_t__ vme_resilient_codesign; scalar_t__ vme_resilient_media; scalar_t__ wired_count; scalar_t__ user_wired_count; scalar_t__ vme_atomic; scalar_t__ in_transition; scalar_t__ needs_wakeup; scalar_t__ is_shared; scalar_t__ superpage_size; struct TYPE_22__* vme_prev; } ;
struct TYPE_21__ {scalar_t__ holelistenabled; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  c_vm_map_simplified ; 
 int /*<<< orphan*/  c_vm_map_simplify_entry_called ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 

void
FUNC16(
	vm_map_t	map,
	vm_map_entry_t	this_entry)
{
	vm_map_entry_t	prev_entry;

	FUNC9(c_vm_map_simplify_entry_called++);

	prev_entry = this_entry->vme_prev;

	if ((this_entry != FUNC14(map)) &&
	    (prev_entry != FUNC14(map)) &&

	    (prev_entry->vme_end == this_entry->vme_start) &&

	    (prev_entry->is_sub_map == this_entry->is_sub_map) &&
	    (FUNC2(prev_entry) == FUNC2(this_entry)) &&
	    ((FUNC3(prev_entry) + (prev_entry->vme_end -
				    prev_entry->vme_start))
	     == FUNC3(this_entry)) &&

	    (prev_entry->behavior == this_entry->behavior) &&
	    (prev_entry->needs_copy == this_entry->needs_copy) &&
	    (prev_entry->protection == this_entry->protection) &&
	    (prev_entry->max_protection == this_entry->max_protection) &&
	    (prev_entry->inheritance == this_entry->inheritance) &&
	    (prev_entry->use_pmap == this_entry->use_pmap) &&
	    (FUNC1(prev_entry) == FUNC1(this_entry)) &&
	    (prev_entry->no_cache == this_entry->no_cache) &&
	    (prev_entry->permanent == this_entry->permanent) &&
	    (prev_entry->map_aligned == this_entry->map_aligned) &&
	    (prev_entry->zero_wired_pages == this_entry->zero_wired_pages) &&
	    (prev_entry->used_for_jit == this_entry->used_for_jit) &&
	    (prev_entry->pmap_cs_associated == this_entry->pmap_cs_associated) &&
	    /* from_reserved_zone: OK if that field doesn't match */
	    (prev_entry->iokit_acct == this_entry->iokit_acct) &&
	    (prev_entry->vme_resilient_codesign ==
	     this_entry->vme_resilient_codesign) &&
	    (prev_entry->vme_resilient_media ==
	     this_entry->vme_resilient_media) &&

	    (prev_entry->wired_count == this_entry->wired_count) &&
	    (prev_entry->user_wired_count == this_entry->user_wired_count) &&

	    ((prev_entry->vme_atomic == FALSE) && (this_entry->vme_atomic == FALSE)) &&
	    (prev_entry->in_transition == FALSE) &&
	    (this_entry->in_transition == FALSE) &&
	    (prev_entry->needs_wakeup == FALSE) &&
	    (this_entry->needs_wakeup == FALSE) &&
	    (prev_entry->is_shared == FALSE) &&
	    (this_entry->is_shared == FALSE) &&
	    (prev_entry->superpage_size == FALSE) &&
	    (this_entry->superpage_size == FALSE)
		) {
		FUNC12(map, prev_entry);
		FUNC8(prev_entry->vme_start < this_entry->vme_end);
		if (prev_entry->map_aligned)
			FUNC8(FUNC6(prev_entry->vme_start,
						   FUNC7(map)));
		this_entry->vme_start = prev_entry->vme_start;
		FUNC4(this_entry, FUNC3(prev_entry));

		if (map->holelistenabled) {
			FUNC13(map, this_entry, TRUE);
		}

		if (prev_entry->is_sub_map) {
			FUNC10(FUNC5(prev_entry));
		} else {
			FUNC15(FUNC2(prev_entry));
		}
		FUNC11(map, prev_entry);
		FUNC0(map, this_entry);
		FUNC9(c_vm_map_simplified++);
	}
}