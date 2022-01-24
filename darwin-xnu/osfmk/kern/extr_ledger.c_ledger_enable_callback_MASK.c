#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* ledger_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
struct TYPE_7__ {TYPE_1__* l_entries; } ;
struct TYPE_6__ {int /*<<< orphan*/  le_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  KERN_INVALID_VALUE ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int /*<<< orphan*/  LEDGER_ACTION_CALLBACK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

kern_return_t
FUNC4(ledger_t ledger, int entry)
{
	if (!FUNC0(ledger, entry))
		return (KERN_INVALID_VALUE);

	FUNC1(FUNC2(ledger, entry) != NULL);

	FUNC3(&ledger->l_entries[entry].le_flags, LEDGER_ACTION_CALLBACK);
	return (KERN_SUCCESS);
}