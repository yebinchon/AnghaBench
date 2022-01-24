#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ledger_t ;
typedef  TYPE_1__* bank_task_t ;
struct TYPE_3__ {int /*<<< orphan*/  bt_acc_to_pay_lock; scalar_t__ bt_ledger; } ;

/* Variables and functions */
 scalar_t__ LEDGER_NULL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static ledger_t
FUNC3(bank_task_t bank_task)
{
	ledger_t ledger = LEDGER_NULL;

	FUNC0(&bank_task->bt_acc_to_pay_lock);
	ledger = bank_task->bt_ledger;
	if (ledger) {
		FUNC2(ledger);
	}
	FUNC1(&bank_task->bt_acc_to_pay_lock);

	return ledger;
}