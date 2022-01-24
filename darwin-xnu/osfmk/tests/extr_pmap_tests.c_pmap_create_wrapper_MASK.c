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
typedef  int /*<<< orphan*/ * pmap_t ;
typedef  int /*<<< orphan*/ * ledger_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  LEDGER_CREATE_ACTIVE_ENTRIES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * task_ledger_template ; 

__attribute__((used)) static pmap_t
FUNC4() {
	pmap_t new_pmap = NULL;
	ledger_t ledger;
	FUNC0(task_ledger_template != NULL);
	if ((ledger = FUNC2(task_ledger_template, LEDGER_CREATE_ACTIVE_ENTRIES)) == NULL)
		return NULL;
        new_pmap = FUNC3(ledger, 0, FALSE);
	FUNC1(ledger);
	return new_pmap;
}