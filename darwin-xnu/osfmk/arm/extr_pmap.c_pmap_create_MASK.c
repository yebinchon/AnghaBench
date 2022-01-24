#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_map_size_t ;
typedef  TYPE_1__* pmap_t ;
typedef  int /*<<< orphan*/  ledger_t ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_6__ {int /*<<< orphan*/  asid; int /*<<< orphan*/  vasid; } ;

/* Variables and functions */
 int DBG_FUNC_END ; 
 int DBG_FUNC_START ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* PMAP_NULL ; 
 int /*<<< orphan*/  FUNC1 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  PMAP__CREATE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

pmap_t
FUNC6(
	ledger_t ledger,
	vm_map_size_t size,
	boolean_t is_64bit)
{
	pmap_t pmap;

	FUNC1(1, FUNC0(PMAP__CREATE) | DBG_FUNC_START, size, is_64bit);

	FUNC4(ledger);

	pmap = FUNC5(ledger, size, is_64bit);

	if (pmap == PMAP_NULL) {
		FUNC3(ledger);
	}

	FUNC1(1, FUNC0(PMAP__CREATE) | DBG_FUNC_END, FUNC2(pmap), pmap->vasid, pmap->asid);

	return pmap;
}