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
struct TYPE_2__ {scalar_t__ prof_cyclic; scalar_t__ prof_kind; } ;
typedef  TYPE_1__ profile_probe_t ;
typedef  int /*<<< orphan*/  dtrace_id_t ;
typedef  int /*<<< orphan*/  cyclic_id_list_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ CYCLIC_NONE ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ PROF_TICK ; 
 int /*<<< orphan*/  cpu_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static void
FUNC4(void *arg, dtrace_id_t id, void *parg)
{
	profile_probe_t *prof = parg;

	FUNC0(prof->prof_cyclic != CYCLIC_NONE);
	FUNC0(FUNC1(&cpu_lock));

#pragma unused(arg,id)
	if (prof->prof_kind == PROF_TICK) {
		FUNC3(prof->prof_cyclic);
	} else {
		FUNC2((cyclic_id_list_t)prof->prof_cyclic); /* cast puns cyclic_id_list_t with cyclic_id_t */
	}
	prof->prof_cyclic = CYCLIC_NONE;
}