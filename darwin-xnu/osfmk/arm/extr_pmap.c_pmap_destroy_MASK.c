#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* pmap_t ;
typedef  int /*<<< orphan*/  ledger_t ;
struct TYPE_5__ {int /*<<< orphan*/  ledger; int /*<<< orphan*/  asid; int /*<<< orphan*/  vasid; } ;

/* Variables and functions */
 int DBG_FUNC_END ; 
 int DBG_FUNC_START ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int,...) ; 
 int /*<<< orphan*/  PMAP__DESTROY ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

void
FUNC5(
	pmap_t pmap)
{
	ledger_t ledger;

	FUNC1(1, FUNC0(PMAP__DESTROY) | DBG_FUNC_START, FUNC2(pmap), pmap->vasid, pmap->asid);

	ledger = pmap->ledger;

	FUNC4(pmap);

	FUNC3(ledger);

	FUNC1(1, FUNC0(PMAP__DESTROY) | DBG_FUNC_END);
}