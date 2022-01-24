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
typedef  TYPE_1__* ledger_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
struct TYPE_4__ {int /*<<< orphan*/  l_refs; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_INVALID_ARGUMENT ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

kern_return_t
FUNC2(ledger_t ledger)
{
	if (!FUNC0(ledger))
		return (KERN_INVALID_ARGUMENT);
	FUNC1(&ledger->l_refs);
	return (KERN_SUCCESS);
}