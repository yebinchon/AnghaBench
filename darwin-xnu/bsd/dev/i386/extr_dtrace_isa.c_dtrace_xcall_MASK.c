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
struct TYPE_2__ {void* arg; int /*<<< orphan*/  f; scalar_t__ cpu; } ;
typedef  TYPE_1__ xcArg_t ;
typedef  scalar_t__ processorid_t ;
typedef  int /*<<< orphan*/  dtrace_xcall_t ;
typedef  int /*<<< orphan*/  cpu_t ;

/* Variables and functions */
 int /*<<< orphan*/  ASYNC ; 
 int /*<<< orphan*/  CPUMASK_ALL ; 
 scalar_t__ DTRACE_CPUALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  xcRemote ; 

void
FUNC2(processorid_t cpu, dtrace_xcall_t f, void *arg)
{
	xcArg_t xcArg;
	
	xcArg.cpu = cpu;
	xcArg.f = f;
	xcArg.arg = arg;

	if (cpu == DTRACE_CPUALL) {
		FUNC1 (CPUMASK_ALL, ASYNC, xcRemote, (void*)&xcArg);
	}
	else {
		FUNC1 (FUNC0((cpu_t)cpu), ASYNC, xcRemote, (void*)&xcArg);
	}
}