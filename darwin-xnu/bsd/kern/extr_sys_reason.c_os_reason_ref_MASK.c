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
typedef  TYPE_1__* os_reason_t ;
struct TYPE_4__ {scalar_t__ osr_refcount; int /*<<< orphan*/  osr_lock; } ;

/* Variables and functions */
 TYPE_1__* OS_REASON_NULL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (scalar_t__,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

void
FUNC5(os_reason_t cur_reason)
{
	if (cur_reason == OS_REASON_NULL) {
		return;
	}

	FUNC1(&cur_reason->osr_lock);

	FUNC0(cur_reason->osr_refcount > 0);
	if (FUNC3(cur_reason->osr_refcount, 1, &cur_reason->osr_refcount)) {
		FUNC4("os reason refcount overflow");
	}

	FUNC2(&cur_reason->osr_lock);

	return;
}