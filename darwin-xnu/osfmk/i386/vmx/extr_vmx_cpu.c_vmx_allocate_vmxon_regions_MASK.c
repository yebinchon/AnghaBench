#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  vmcs_id; } ;
struct TYPE_5__ {TYPE_1__ specs; int /*<<< orphan*/ * vmxon_region; } ;
typedef  TYPE_2__ vmx_cpu_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_6__ {TYPE_2__ cpu_vmx; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 unsigned int real_ncpus ; 
 int /*<<< orphan*/ * FUNC2 () ; 

__attribute__((used)) static void
FUNC3(void)
{
	unsigned int i;
	
	for (i=0; i<real_ncpus; i++) {
		vmx_cpu_t *cpu = &FUNC0(i)->cpu_vmx;

		/* The size is defined to be always <= 4K, so we just allocate a page */
		cpu->vmxon_region = FUNC2();
		if (NULL == cpu->vmxon_region)
			FUNC1("vmx_allocate_vmxon_regions: unable to allocate VMXON region");
		*(uint32_t*)(cpu->vmxon_region) = cpu->specs.vmcs_id;
	}
}