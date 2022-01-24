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
typedef  int /*<<< orphan*/  kern_return_t ;
struct TYPE_4__ {int /*<<< orphan*/  cpu_processor; int /*<<< orphan*/  cpu_number; } ;
struct TYPE_3__ {int max_cpus; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_FAILURE ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 TYPE_2__* FUNC1 (int) ; 
 TYPE_1__ machine_info ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

kern_return_t
FUNC3( int cpunum )
{
	int		ncpus = machine_info.max_cpus;
	int		i = cpunum;

	/* Decide whether to start a CPU, and actually start it */
	FUNC0("cpu_topology_start() processor_start():\n");
	if( i < ncpus)
	{
		FUNC0("\tlcpu %d\n", FUNC1(i)->cpu_number);
		FUNC2(FUNC1(i)->cpu_processor); 
		return KERN_SUCCESS;
	}
	else
	    return KERN_FAILURE;
}