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
typedef  int /*<<< orphan*/  uint64_t ;
struct ledger_entry_info {int dummy; } ;
struct ledger_entry {int dummy; } ;
typedef  TYPE_1__* ledger_t ;
struct TYPE_3__ {int l_size; struct ledger_entry* l_entries; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ledger_entry*,struct ledger_entry_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 

void
FUNC3(ledger_t                  ledger,
                      int                       entry,
                      struct ledger_entry_info *lei)
{
	uint64_t now = FUNC2();

	FUNC0(ledger != NULL);
	FUNC0(lei != NULL);

	if (entry >= 0 && entry < ledger->l_size) {
		struct ledger_entry *le = &ledger->l_entries[entry];
		FUNC1(le, lei, now);
	}
}