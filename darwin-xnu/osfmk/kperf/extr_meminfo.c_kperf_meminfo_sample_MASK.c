#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* task_t ;
struct meminfo {void* purgeable_volatile_compressed; void* purgeable_volatile; int /*<<< orphan*/  phys_footprint; } ;
typedef  void* ledger_amount_t ;
typedef  scalar_t__ kern_return_t ;
struct TYPE_6__ {int /*<<< orphan*/  purgeable_volatile_compressed; int /*<<< orphan*/  purgeable_volatile; } ;
struct TYPE_5__ {int /*<<< orphan*/  ledger; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int DBG_FUNC_END ; 
 int DBG_FUNC_START ; 
 scalar_t__ KERN_SUCCESS ; 
 int PERF_MI_SAMPLE ; 
 void* UINT64_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**,void**) ; 
 TYPE_2__ task_ledgers ; 

void
FUNC4(task_t task, struct meminfo *mi)
{
	ledger_amount_t credit, debit;
	kern_return_t kr;

	FUNC1(mi != NULL);

	FUNC0(PERF_MI_SAMPLE | DBG_FUNC_START);

	mi->phys_footprint = FUNC2(task);

	kr = FUNC3(task->ledger, task_ledgers.purgeable_volatile,
	                        &credit, &debit);
	if (kr == KERN_SUCCESS) {
		mi->purgeable_volatile = credit - debit;
	} else {
		mi->purgeable_volatile = UINT64_MAX;
	}

	kr = FUNC3(task->ledger,
	                        task_ledgers.purgeable_volatile_compressed,
	                        &credit, &debit);
	if (kr == KERN_SUCCESS) {
		mi->purgeable_volatile_compressed = credit - debit;
	} else {
		mi->purgeable_volatile_compressed = UINT64_MAX;
	}

	FUNC0(PERF_MI_SAMPLE | DBG_FUNC_END);
}