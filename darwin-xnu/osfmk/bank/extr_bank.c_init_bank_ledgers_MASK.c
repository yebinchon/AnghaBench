#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * ledger_template_t ;
struct TYPE_2__ {int cpu_time; int energy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * bank_ledger_template ; 
 TYPE_1__ bank_ledgers ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void
FUNC5(void) {
	ledger_template_t t;
	int idx;
	
	FUNC0(bank_ledger_template == NULL);

	if ((t = FUNC3("Bank ledger")) == NULL)
		FUNC4("couldn't create bank ledger template");

	if ((idx = FUNC1(t, "cpu_time", "sched", "ns")) < 0) {
		FUNC4("couldn't create cpu_time entry for bank ledger template");
	}
	bank_ledgers.cpu_time = idx;

	if ((idx = FUNC1(t, "energy", "power", "nj")) < 0) {
		FUNC4("couldn't create energy entry for bank ledger template");
	}
	bank_ledgers.energy = idx;

	FUNC2(t);
	bank_ledger_template = t;
}