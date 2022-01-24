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
typedef  TYPE_1__* proc_t ;
typedef  scalar_t__ pid_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_4__ {int /*<<< orphan*/  p_memstat_state; } ;

/* Variables and functions */
 int EINVAL ; 
 int ESRCH ; 
 int /*<<< orphan*/  P_MEMSTAT_MANAGED ; 
 scalar_t__ TRUE ; 
 TYPE_1__* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC4(pid_t pid, boolean_t set_managed)
{
	proc_t p = NULL;

	/* Validate inputs */
	if (pid == 0) {
		return EINVAL;
	}

	p = FUNC0(pid);
	if (!p) {
		return ESRCH;
	}

	FUNC1();
	if (set_managed == TRUE) {
		p->p_memstat_state |= P_MEMSTAT_MANAGED;
	} else {
		p->p_memstat_state &= ~P_MEMSTAT_MANAGED;
	}
	FUNC3(p);
	FUNC2();

	return 0;
}