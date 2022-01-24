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
struct TYPE_2__ {int cpu_time; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,char*,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  thread_cputime_callback ; 
 int /*<<< orphan*/ * thread_ledger_template ; 
 TYPE_1__ thread_ledgers ; 

__attribute__((used)) static void
FUNC6(void) {
	ledger_template_t t;
	int idx;
	
	FUNC0(thread_ledger_template == NULL);

	if ((t = FUNC4("Per-thread ledger")) == NULL)
		FUNC5("couldn't create thread ledger template");

	if ((idx = FUNC1(t, "cpu_time", "sched", "ns")) < 0) {
		FUNC5("couldn't create cpu_time entry for thread ledger template");
	}

	if (FUNC2(t, idx, thread_cputime_callback, NULL, NULL) < 0) {
	    	FUNC5("couldn't set thread ledger callback for cpu_time entry");
	}

	thread_ledgers.cpu_time = idx;

	FUNC3(t);
	thread_ledger_template = t;
}