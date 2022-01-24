#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ledger_entry {int le_flags; scalar_t__ le_debit; scalar_t__ le_credit; } ;
typedef  TYPE_1__* ledger_t ;
typedef  scalar_t__ ledger_amount_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
struct TYPE_4__ {struct ledger_entry* l_entries; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  KERN_INVALID_ARGUMENT ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int LF_TRACK_CREDIT_ONLY ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

kern_return_t
FUNC2(ledger_t ledger, int entry, ledger_amount_t *balance)
{
	struct ledger_entry *le;

	if (!FUNC0(ledger, entry))
		return (KERN_INVALID_ARGUMENT);

	le = &ledger->l_entries[entry];

	if (le->le_flags & LF_TRACK_CREDIT_ONLY) {
		FUNC1(le->le_debit == 0);
	} else {
		FUNC1((le->le_credit >= 0) && (le->le_debit >= 0));
	}

	*balance = le->le_credit - le->le_debit;

	return (KERN_SUCCESS);
}