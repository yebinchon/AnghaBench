#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ prof_cyclic; scalar_t__ prof_kind; } ;
typedef  TYPE_1__ profile_probe_t ;
typedef  int /*<<< orphan*/  profile_probe_percpu_t ;
typedef  int /*<<< orphan*/  dtrace_id_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ CYCLIC_NONE ; 
 int NCPU ; 
 scalar_t__ PROF_TICK ; 
 int /*<<< orphan*/  FUNC1 (int*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int profile_total ; 

__attribute__((used)) static void
FUNC3(void *arg, dtrace_id_t id, void *parg)
{
#pragma unused(arg,id) /* __APPLE__ */
	profile_probe_t *prof = parg;

	FUNC0(prof->prof_cyclic == CYCLIC_NONE);

	if (prof->prof_kind == PROF_TICK)
		FUNC2(prof, sizeof (profile_probe_t));
	else
		FUNC2(prof, sizeof (profile_probe_t) + NCPU*sizeof(profile_probe_percpu_t));

	FUNC0(profile_total >= 1);
	FUNC1(&profile_total, -1);
}