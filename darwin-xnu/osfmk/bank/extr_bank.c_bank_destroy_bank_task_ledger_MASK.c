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
typedef  int /*<<< orphan*/  ledger_t ;
typedef  TYPE_1__* bank_task_t ;
struct TYPE_3__ {int /*<<< orphan*/  bt_acc_to_pay_lock; int /*<<< orphan*/  bt_ledger; } ;

/* Variables and functions */
 int /*<<< orphan*/  LEDGER_NULL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(bank_task_t bank_task)
{
	ledger_t ledger;

	/* Remove the ledger reference from the bank task */
	FUNC2(&bank_task->bt_acc_to_pay_lock);
	FUNC1(FUNC0(bank_task->bt_ledger));
	ledger = bank_task->bt_ledger;
	bank_task->bt_ledger = LEDGER_NULL;
	FUNC3(&bank_task->bt_acc_to_pay_lock);

	FUNC4(ledger);
}