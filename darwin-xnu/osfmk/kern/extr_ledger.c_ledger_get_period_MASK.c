#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_6__ {int /*<<< orphan*/  le_refill_period; } ;
struct TYPE_7__ {TYPE_1__ le_refill; } ;
struct ledger_entry {TYPE_2__ _le; } ;
typedef  TYPE_3__* ledger_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
struct TYPE_8__ {struct ledger_entry* l_entries; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  KERN_INVALID_VALUE ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

kern_return_t
FUNC3(ledger_t ledger, int entry, uint64_t *period)
{
	struct ledger_entry *le;

	if (!FUNC0(ledger, entry))
		return (KERN_INVALID_VALUE);

	le = &ledger->l_entries[entry];
	*period = FUNC1(le->_le.le_refill.le_refill_period);
	FUNC2(("ledger_get_period: %llx\n", *period));
	return (KERN_SUCCESS);
}