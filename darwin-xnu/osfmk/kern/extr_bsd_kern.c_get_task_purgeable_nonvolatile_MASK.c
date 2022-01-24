#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  TYPE_1__* task_t ;
typedef  scalar_t__ ledger_amount_t ;
typedef  scalar_t__ kern_return_t ;
struct TYPE_5__ {int /*<<< orphan*/  purgeable_nonvolatile; } ;
struct TYPE_4__ {int /*<<< orphan*/  ledger; } ;

/* Variables and functions */
 scalar_t__ KERN_SUCCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,scalar_t__*) ; 
 TYPE_2__ task_ledgers ; 

uint64_t FUNC1(task_t task)
{
	kern_return_t ret;
	ledger_amount_t credit, debit;

	ret = FUNC0(task->ledger, task_ledgers.purgeable_nonvolatile, &credit, &debit);
	if (KERN_SUCCESS == ret) {
		return (credit - debit);
	}

	return 0;
}