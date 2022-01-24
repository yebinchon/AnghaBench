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
typedef  int /*<<< orphan*/ * bank_task_t ;
struct TYPE_5__ {int /*<<< orphan*/  energy_billed_to_me; int /*<<< orphan*/  cpu_time_billed_to_me; } ;
struct TYPE_4__ {int /*<<< orphan*/  ledger; int /*<<< orphan*/ * bank_context; } ;

/* Variables and functions */
 int /*<<< orphan*/ * BANK_TASK_NULL ; 
 scalar_t__ KERN_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,scalar_t__*) ; 
 TYPE_2__ task_ledgers ; 

void
FUNC6(task_t task, uint64_t *cpu_time, uint64_t *energy)
{
	bank_task_t bank_task = BANK_TASK_NULL;
	ledger_amount_t credit, debit;
	uint64_t cpu_balance = 0;
	uint64_t energy_balance = 0;
	kern_return_t kr;

	/* Task might be in exec, grab the global bank task lock before accessing bank context. */
	FUNC3();
	/* Grab a reference on bank context */
	if (task->bank_context != NULL) {
		bank_task = task->bank_context;
		FUNC2(bank_task);
	}
	FUNC4();

	if (bank_task) {
		FUNC0(bank_task, &cpu_balance, &energy_balance);
		FUNC1(bank_task, 1);
	} else {
		kr = FUNC5(task->ledger, task_ledgers.cpu_time_billed_to_me,
			&credit, &debit);
		if (kr == KERN_SUCCESS) {
			cpu_balance = credit - debit;
		}
		kr = FUNC5(task->ledger, task_ledgers.energy_billed_to_me,
			&credit, &debit);
		if (kr == KERN_SUCCESS) {
			energy_balance = credit - debit;
		}
	}

	*cpu_time = cpu_balance;
	*energy = energy_balance;
	return;
}