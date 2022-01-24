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
typedef  int /*<<< orphan*/  kern_return_t ;
typedef  int /*<<< orphan*/  cpu_data_t ;
typedef  scalar_t__ broadcastFunc ;
struct TYPE_2__ {scalar_t__ cpu_data_vaddr; } ;

/* Variables and functions */
 TYPE_1__* CpuDataEntries ; 
 int /*<<< orphan*/  KERN_INVALID_ARGUMENT ; 
 int /*<<< orphan*/  SIGPxcall ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,void*) ; 
 int FUNC1 () ; 

kern_return_t
FUNC2(int cpu_number, broadcastFunc func, void *param)
{
	cpu_data_t	*target_cpu_datap;

	if ((cpu_number < 0) || (cpu_number > FUNC1()))
		return KERN_INVALID_ARGUMENT;

	target_cpu_datap = (cpu_data_t*)CpuDataEntries[cpu_number].cpu_data_vaddr;		
	if (target_cpu_datap == NULL)
		return KERN_INVALID_ARGUMENT;

	return FUNC0(target_cpu_datap, SIGPxcall, (void*)func, param);
}