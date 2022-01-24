#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct thread_group {int dummy; } ;
typedef  int /*<<< orphan*/  ledger_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
typedef  int /*<<< orphan*/  ipc_voucher_t ;
typedef  int /*<<< orphan*/  bank_account_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct thread_group* FUNC1 (int /*<<< orphan*/ ) ; 
 struct thread_group* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

kern_return_t
FUNC6(
	ipc_voucher_t     voucher,
	ledger_t          *bankledger,
	struct thread_group **banktg)
{
	bank_account_t bank_account;
	struct thread_group *thread_group = NULL;

	bank_account = FUNC3(voucher);
	*bankledger = FUNC0(bank_account);
	thread_group = FUNC1(bank_account);

	/* Return NULL thread group if voucher has current task's thread group */
	if (thread_group == FUNC2(
			FUNC5(FUNC4(), FALSE))) {
		thread_group = NULL;
	}
	*banktg = thread_group;
	return KERN_SUCCESS;
}