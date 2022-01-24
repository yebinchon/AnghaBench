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
typedef  scalar_t__ thread_t ;
struct ledger_entry {int le_flags; scalar_t__ le_debit; scalar_t__ le_credit; } ;
typedef  TYPE_1__* ledger_t ;
typedef  scalar_t__ ledger_amount_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
struct TYPE_5__ {struct ledger_entry* l_entries; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  KERN_INVALID_ARGUMENT ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int LF_TRACK_CREDIT_ONLY ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,TYPE_1__*,int,struct ledger_entry*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

kern_return_t
FUNC5(thread_t thread, ledger_t ledger, int entry, ledger_amount_t amount)
{
	struct ledger_entry *le;
	ledger_amount_t old, new;

	if (!FUNC0(ledger, entry) || (amount < 0))
		return (KERN_INVALID_ARGUMENT);

	if (amount == 0)
		return (KERN_SUCCESS);

	le = &ledger->l_entries[entry];

	if (le->le_flags & LF_TRACK_CREDIT_ONLY) {
		FUNC2(le->le_debit == 0);
		old = FUNC1(-amount, &le->le_credit);
		new = old - amount;
	} else {
		old = FUNC1(amount, &le->le_debit);
		new = old + amount;
	}
	FUNC4(("%p Debit %lld->%lld\n", thread, old, new));

	if (thread) {
		FUNC3(thread, ledger, entry, le);
	}

	return (KERN_SUCCESS);
}