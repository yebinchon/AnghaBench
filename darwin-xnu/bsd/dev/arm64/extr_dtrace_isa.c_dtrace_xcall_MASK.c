#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {void* arg; int /*<<< orphan*/  (* f ) (void*) ;scalar_t__ cpu; } ;
typedef  TYPE_1__ xcArg_t ;
typedef  scalar_t__ processorid_t ;
typedef  int /*<<< orphan*/  (* dtrace_xcall_t ) (void*) ;
struct TYPE_4__ {scalar_t__ cpu_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_2__* CPU ; 
 scalar_t__ DTRACE_CPUALL ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  dt_xc_lock ; 
 int /*<<< orphan*/  dt_xc_sync ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  xcRemote ; 

void
FUNC5(processorid_t cpu, dtrace_xcall_t f, void *arg)
{
#if __ARM_SMP__
	/* Only one dtrace_xcall in flight allowed */
	lck_mtx_lock(&dt_xc_lock);

	xcArg_t xcArg;

	xcArg.cpu = cpu;
	xcArg.f = f;
	xcArg.arg = arg;

	cpu_broadcast_xcall(&dt_xc_sync, TRUE, xcRemote, (void*) &xcArg);

	lck_mtx_unlock(&dt_xc_lock);
	return;
#else
#pragma unused(cpu)
	/* On uniprocessor systems, the cpu should always be either ourselves or all */
	FUNC0(cpu == CPU->cpu_id || cpu == DTRACE_CPUALL);

	(*f)(arg);
	return;
#endif
}