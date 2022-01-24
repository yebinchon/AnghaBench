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
typedef  int /*<<< orphan*/  dtrace_id_t ;
struct TYPE_2__ {scalar_t__ stsy_entry; scalar_t__ stsy_return; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ DTRACE_IDNONE ; 
 scalar_t__ FUNC1 (uintptr_t) ; 
 int FUNC2 (uintptr_t) ; 
 TYPE_1__* systrace_sysent ; 

__attribute__((used)) static void
FUNC3(void *arg, dtrace_id_t id, void *parg)
{
#pragma unused(arg,id) /* __APPLE__ */

	int sysnum = FUNC2((uintptr_t)parg);

#pragma unused(sysnum)  /* __APPLE__ */
	/*
	 * There's nothing to do here but assert that we have actually been
	 * disabled.
	 */
	if (FUNC1((uintptr_t)parg)) {
		FUNC0(systrace_sysent[sysnum].stsy_entry == DTRACE_IDNONE);
	} else {
		FUNC0(systrace_sysent[sysnum].stsy_return == DTRACE_IDNONE);
	}
}