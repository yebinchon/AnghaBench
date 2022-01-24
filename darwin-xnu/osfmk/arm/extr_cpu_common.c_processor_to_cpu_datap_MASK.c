#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* processor_t ;
struct TYPE_7__ {TYPE_1__* cpu_processor; } ;
typedef  TYPE_2__ cpu_data_t ;
struct TYPE_8__ {int /*<<< orphan*/ * cpu_data_vaddr; } ;
struct TYPE_6__ {size_t cpu_id; } ;

/* Variables and functions */
 TYPE_5__* CpuDataEntries ; 
 size_t MAX_CPUS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 

cpu_data_t *
FUNC1(processor_t processor)
{
	cpu_data_t *target_cpu_datap;

	FUNC0(processor->cpu_id < MAX_CPUS);
	FUNC0(CpuDataEntries[processor->cpu_id].cpu_data_vaddr != NULL);

	target_cpu_datap = (cpu_data_t*)CpuDataEntries[processor->cpu_id].cpu_data_vaddr;
	FUNC0(target_cpu_datap->cpu_processor == processor);

	return target_cpu_datap;
}