#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_7__ {int /*<<< orphan*/  le_last_refill; int /*<<< orphan*/  le_refill_period; } ;
struct TYPE_8__ {TYPE_1__ le_refill; } ;
struct ledger_entry {scalar_t__ le_limit; int le_flags; TYPE_2__ _le; } ;
typedef  TYPE_3__* ledger_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
struct TYPE_9__ {struct ledger_entry* l_entries; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  KERN_INVALID_VALUE ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 scalar_t__ LEDGER_LIMIT_INFINITY ; 
 int /*<<< orphan*/  LF_REFILL_SCHEDULED ; 
 int LF_TRACKING_MAX ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

kern_return_t
FUNC7(ledger_t ledger, int entry, uint64_t period)
{
	struct ledger_entry *le;

	FUNC4(("ledger_set_period: %llx\n", period));
	if (!FUNC0(ledger, entry))
		return (KERN_INVALID_VALUE);

	le = &ledger->l_entries[entry];

	/*
	 * A refill period refills the ledger in multiples of the limit,
	 * so if you haven't set one yet, you need a lesson on ledgers.
	 */
	FUNC1(le->le_limit != LEDGER_LIMIT_INFINITY);

	if (le->le_flags & LF_TRACKING_MAX) {
		/*
		 * Refill is incompatible with rolling max tracking.
		 */
		return (KERN_INVALID_VALUE);
	}

	le->_le.le_refill.le_refill_period = FUNC6(period);

	/*
	 * Set the 'starting time' for the next refill to now. Since
	 * we're resetting the balance to zero here, we consider this
	 * moment the starting time for accumulating a balance that
	 * counts towards the limit.
	 */
	le->_le.le_refill.le_last_refill = FUNC5();
	FUNC3(ledger, entry);

	FUNC2(&le->le_flags, LF_REFILL_SCHEDULED);

	return (KERN_SUCCESS);
}