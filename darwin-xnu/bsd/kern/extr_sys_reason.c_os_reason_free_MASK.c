#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* os_reason_t ;
struct TYPE_6__ {scalar_t__ osr_refcount; int /*<<< orphan*/  osr_lock; } ;

/* Variables and functions */
 TYPE_1__* OS_REASON_NULL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  os_reason_lock_grp ; 
 int /*<<< orphan*/  os_reason_zone ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_1__*) ; 

void
FUNC6(os_reason_t cur_reason)
{
	if (cur_reason == OS_REASON_NULL) {
		return;
	}

	FUNC1(&cur_reason->osr_lock);

	if (cur_reason->osr_refcount == 0) {
		FUNC4("os_reason_free called on reason with zero refcount");
	}

	cur_reason->osr_refcount--;
	if (cur_reason->osr_refcount != 0) {
		FUNC2(&cur_reason->osr_lock);
		return;
	}

	FUNC3(cur_reason);

	FUNC2(&cur_reason->osr_lock);
	FUNC0(&cur_reason->osr_lock, os_reason_lock_grp);

	FUNC5(os_reason_zone, cur_reason);
}