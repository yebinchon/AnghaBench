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
struct TYPE_4__ {scalar_t__ stsy_underlying; int /*<<< orphan*/  stsy_return_type; } ;
typedef  TYPE_1__ systrace_sysent_t ;
struct sysent {scalar_t__ sy_callc; int /*<<< orphan*/  sy_return_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  KM_SLEEP ; 
 scalar_t__ FUNC0 (struct sysent*) ; 
 int /*<<< orphan*/  FUNC1 (struct sysent*) ; 
 int NSYSCALL ; 
 int /*<<< orphan*/  dtrace_lck_attr ; 
 int /*<<< orphan*/  dtrace_lck_grp ; 
 int /*<<< orphan*/  dtrace_systrace_lock ; 
 scalar_t__ dtrace_systrace_syscall ; 
 TYPE_1__* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct sysent *actual, systrace_sysent_t **interposed)
{

	systrace_sysent_t *ssysent = *interposed;  /* Avoid sysent shadow warning
							   from bsd/sys/sysent.h */
	unsigned int i;

	if (ssysent == NULL) {
		*interposed = ssysent = FUNC2(sizeof (systrace_sysent_t) *
		    NSYSCALL, KM_SLEEP);
	}

	for (i = 0; i < NSYSCALL; i++) {
		struct sysent *a = &actual[i];
		systrace_sysent_t *s = &ssysent[i];

		if (FUNC0(a) && !FUNC1(a))
			continue;

		if (a->sy_callc == dtrace_systrace_syscall)
			continue;

		s->stsy_underlying = a->sy_callc;
		s->stsy_return_type = a->sy_return_type;
	}
	FUNC3(&dtrace_systrace_lock, dtrace_lck_grp, dtrace_lck_attr);
}