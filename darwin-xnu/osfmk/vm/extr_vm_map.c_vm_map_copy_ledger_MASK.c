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
typedef  TYPE_2__* task_t ;
typedef  scalar_t__ ledger_amount_t ;
struct TYPE_6__ {int /*<<< orphan*/  ledger; TYPE_1__* map; } ;
struct TYPE_5__ {int /*<<< orphan*/  has_corpse_footprint; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,scalar_t__*) ; 

void
FUNC5(
	task_t	old_task,
	task_t	new_task,
	int	ledger_entry)
{
	ledger_amount_t	old_balance, new_balance, delta;

	FUNC0(new_task->map->has_corpse_footprint);
	if (!new_task->map->has_corpse_footprint)
		return;

	/* turn off sanity checks for the ledger we're about to mess with */
	FUNC3(new_task->ledger,
					 ledger_entry);

	/* adjust "new_task" to match "old_task" */
	FUNC4(old_task->ledger,
			   ledger_entry,
			   &old_balance);
	FUNC4(new_task->ledger,
			   ledger_entry,
			   &new_balance);
	if (new_balance == old_balance) {
		/* new == old: done */
	} else if (new_balance > old_balance) {
		/* new > old ==> new -= new - old */
		delta = new_balance - old_balance;
		FUNC2(new_task->ledger,
			     ledger_entry,
			     delta);
	} else {
		/* new < old ==> new += old - new */
		delta = old_balance - new_balance;
		FUNC1(new_task->ledger,
			      ledger_entry,
			      delta);
	}
}