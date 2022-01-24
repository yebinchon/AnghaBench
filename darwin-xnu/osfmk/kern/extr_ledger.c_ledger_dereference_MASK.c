#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* ledger_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
struct TYPE_8__ {TYPE_1__* l_template; int /*<<< orphan*/  l_refs; } ;
struct TYPE_7__ {scalar_t__ lt_zone; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  KERN_INVALID_ARGUMENT ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,TYPE_2__*) ; 

kern_return_t
FUNC5(ledger_t ledger)
{
	int v;

	if (!FUNC1(ledger))
		return (KERN_INVALID_ARGUMENT);

	v = FUNC2(&ledger->l_refs);
	FUNC0(v >= 1);

	/* Just released the last reference.  Free it. */
	if (v == 1) {
		if (ledger->l_template->lt_zone) {
			FUNC4(ledger->l_template->lt_zone, ledger);
		} else {
			FUNC3(ledger);
		}
	}

	return (KERN_SUCCESS);
}