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
typedef  TYPE_1__* uthread_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  dtrace_id_t ;
struct TYPE_2__ {int /*<<< orphan*/ * t_dtrace_syscall_args; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPU_DTRACE_NOFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int SYSTRACE_NARGS ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint64_t
FUNC4(void *arg, dtrace_id_t id, void *parg, int argno, int aframes)
{
#pragma unused(arg,id,parg,aframes)     /* __APPLE__ */
	uint64_t val = 0;
	uint64_t *uargs = NULL;

	uthread_t uthread = (uthread_t)FUNC3(FUNC2());	

	if (uthread)
		uargs = uthread->t_dtrace_syscall_args;
	if (!uargs)
		return(0);
	if (argno < 0 || argno >= SYSTRACE_NARGS)
		return(0);

	FUNC1(CPU_DTRACE_NOFAULT);
	val = uargs[argno];
	FUNC0(CPU_DTRACE_NOFAULT);
	return (val);
}