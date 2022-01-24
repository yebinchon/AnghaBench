#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ledger_t ;
typedef  int /*<<< orphan*/  ledger_amount_t ;
typedef  scalar_t__ kern_return_t ;
struct TYPE_4__ {int /*<<< orphan*/  energy; int /*<<< orphan*/  cpu_time; } ;
struct TYPE_3__ {int /*<<< orphan*/  energy_billed_to_others; int /*<<< orphan*/  energy_billed_to_me; int /*<<< orphan*/  cpu_time_billed_to_others; int /*<<< orphan*/  cpu_time_billed_to_me; } ;

/* Variables and functions */
 int /*<<< orphan*/  BANK_ACCOUNT_INFO ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BANK_SETTLE_CPU_TIME ; 
 int /*<<< orphan*/  BANK_SETTLE_ENERGY ; 
 int DBG_FUNC_NONE ; 
 int /*<<< orphan*/  KDEBUG_TRACE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ KERN_SUCCESS ; 
 TYPE_2__ bank_ledgers ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__ task_ledgers ; 

__attribute__((used)) static void
FUNC5(
	ledger_t bill,
	ledger_t bank_holder_ledger,
	ledger_t bank_merchant_ledger,
	int bank_holder_pid,
	int bank_merchant_pid)
{
	ledger_amount_t credit;
	ledger_amount_t debit;
	kern_return_t ret;

	if (bank_holder_ledger == bank_merchant_ledger)
		return;

	ret = FUNC4(bill, bank_ledgers.cpu_time, &credit, &debit);
	if (ret == KERN_SUCCESS) {
		FUNC1(KDEBUG_TRACE,
			(FUNC0(BANK_ACCOUNT_INFO, (BANK_SETTLE_CPU_TIME))) | DBG_FUNC_NONE,
			bank_merchant_pid, bank_holder_pid, credit, debit, 0);

		if (bank_holder_ledger) {
			FUNC2(bank_holder_ledger, task_ledgers.cpu_time_billed_to_me, credit);
			FUNC3(bank_holder_ledger, task_ledgers.cpu_time_billed_to_me, debit);
		}

		if (bank_merchant_ledger) {
			FUNC2(bank_merchant_ledger, task_ledgers.cpu_time_billed_to_others, credit);
			FUNC3(bank_merchant_ledger, task_ledgers.cpu_time_billed_to_others, debit);
		}
	}

	ret = FUNC4(bill, bank_ledgers.energy, &credit, &debit);
	if (ret == KERN_SUCCESS) {
		FUNC1(KDEBUG_TRACE,
			(FUNC0(BANK_ACCOUNT_INFO, (BANK_SETTLE_ENERGY))) | DBG_FUNC_NONE,
			bank_merchant_pid, bank_holder_pid, credit, debit, 0);

		if (bank_holder_ledger) {
			FUNC2(bank_holder_ledger, task_ledgers.energy_billed_to_me, credit);
			FUNC3(bank_holder_ledger, task_ledgers.energy_billed_to_me, debit);
		}

		if (bank_merchant_ledger) {
			FUNC2(bank_merchant_ledger, task_ledgers.energy_billed_to_others, credit);
			FUNC3(bank_merchant_ledger, task_ledgers.energy_billed_to_others, debit);
		}
	}
}