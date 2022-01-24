#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* uthread_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  dtrace_id_t ;
struct TYPE_5__ {char* dtargd_native; void* dtargd_ndx; } ;
typedef  TYPE_2__ dtrace_argdesc_t ;
struct TYPE_4__ {int /*<<< orphan*/ * t_dtrace_syscall_args; } ;

/* Variables and functions */
 void* DTRACE_ARGNONE ; 
 scalar_t__ FUNC0 (uintptr_t) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,void*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int,void*,char*,int) ; 

__attribute__((used)) static void
FUNC6(void *arg, dtrace_id_t id, void *parg,
	dtrace_argdesc_t *desc)
{
#pragma unused(arg, id)
	int sysnum = FUNC1(parg);
	uthread_t uthread = (uthread_t)FUNC3(FUNC2());
	uint64_t *uargs = NULL;

	if (!uthread) {
		desc->dtargd_ndx = DTRACE_ARGNONE;
		return;
	}

	uargs = uthread->t_dtrace_syscall_args;

	if (FUNC0((uintptr_t)parg)) {
		FUNC4(sysnum, desc->dtargd_ndx,
			desc->dtargd_native, sizeof(desc->dtargd_native));
	}
	else {
		FUNC5(sysnum, desc->dtargd_ndx,
			desc->dtargd_native, sizeof(desc->dtargd_native));
	}

	if (desc->dtargd_native[0] == '\0')
		desc->dtargd_ndx = DTRACE_ARGNONE;
}