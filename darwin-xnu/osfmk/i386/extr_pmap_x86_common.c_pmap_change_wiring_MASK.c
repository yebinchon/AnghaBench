#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_map_offset_t ;
typedef  int /*<<< orphan*/  pt_entry_t ;
typedef  TYPE_2__* pmap_t ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_13__ {int /*<<< orphan*/  wired_mem; } ;
struct TYPE_11__ {int wired_count; } ;
struct TYPE_12__ {TYPE_1__ stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int*) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  PTE_WIRED ; 
 int /*<<< orphan*/ * PT_ENTRY_NULL ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__ task_ledgers ; 

void
FUNC10(
	pmap_t		map,
	vm_map_offset_t	vaddr,
	boolean_t	wired)
{
	pt_entry_t	*pte;

	FUNC1(map);

	if ((pte = FUNC8(map, vaddr)) == PT_ENTRY_NULL)
		FUNC5("pmap_change_wiring(%p,0x%llx,%d): pte missing",
		      map, vaddr, wired);

	if (wired && !FUNC4(*pte)) {
		/*
		 * wiring down mapping
		 */
		FUNC6(map, task_ledgers.wired_mem, PAGE_SIZE);
		FUNC0(+1,  &map->stats.wired_count);
		FUNC9(pte, 0, PTE_WIRED);
	}
	else if (!wired && FUNC4(*pte)) {
		/*
		 * unwiring mapping
		 */
		FUNC3(map->stats.wired_count >= 1);
		FUNC0(-1,  &map->stats.wired_count);
		FUNC7(map, task_ledgers.wired_mem, PAGE_SIZE);
		FUNC9(pte, PTE_WIRED, 0);
	}

	FUNC2(map);
}