#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_map_offset_t ;
typedef  TYPE_1__* vm_map_entry_t ;
struct vm_map_header {int /*<<< orphan*/  entries_pageable; } ;
struct TYPE_11__ {scalar_t__ vme_end; scalar_t__ vme_start; scalar_t__ is_sub_map; int /*<<< orphan*/  vme_prev; scalar_t__ map_aligned; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct vm_map_header*) ; 
 int FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (struct vm_map_header*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct vm_map_header*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC12(
	struct vm_map_header	*map_header,
	vm_map_entry_t		entry,
	vm_map_offset_t		start)
{
	vm_map_entry_t	new_entry;

	/*
	 *	Split off the front portion --
	 *	note that we must insert the new
	 *	entry BEFORE this one, so that
	 *	this entry has the specified starting
	 *	address.
	 */

	if (entry->map_aligned) {
		FUNC8(FUNC5(start,
					   FUNC4(map_header)));
	}

	new_entry = FUNC6(map_header, !map_header->entries_pageable);
	FUNC9(new_entry, entry);

	new_entry->vme_end = start;
	FUNC8(new_entry->vme_start < new_entry->vme_end);
	FUNC2(entry, FUNC1(entry) + (start - entry->vme_start));
	FUNC8(start < entry->vme_end);
	entry->vme_start = start;

	FUNC7(map_header, entry->vme_prev, new_entry);

	if (entry->is_sub_map)
		FUNC10(FUNC3(new_entry));
	else
		FUNC11(FUNC0(new_entry));
}