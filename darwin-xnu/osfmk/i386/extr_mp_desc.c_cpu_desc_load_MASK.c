#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct real_descriptor {int dummy; } ;
struct TYPE_12__ {scalar_t__ size; } ;
struct TYPE_11__ {int size; } ;
struct TYPE_10__ {scalar_t__ size; } ;
struct TYPE_9__ {int size; } ;
struct TYPE_13__ {TYPE_4__ cdi_idtu; TYPE_3__ cdi_gdtu; TYPE_2__ cdi_idtb; TYPE_1__ cdi_gdtb; } ;
typedef  TYPE_5__ cpu_desc_index_t ;
struct TYPE_14__ {scalar_t__ cpu_number; TYPE_5__ cpu_desc_index; } ;
typedef  TYPE_6__ cpu_data_t ;
struct TYPE_15__ {int /*<<< orphan*/  access; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACC_TSS_BUSY ; 
 int /*<<< orphan*/  CPU_DESC_LOAD_ENTRY ; 
 int /*<<< orphan*/  CPU_DESC_LOAD_EXIT ; 
 int /*<<< orphan*/  CPU_DESC_LOAD_GDT ; 
 int /*<<< orphan*/  CPU_DESC_LOAD_GS_BASE ; 
 int /*<<< orphan*/  CPU_DESC_LOAD_IDT ; 
 int /*<<< orphan*/  CPU_DESC_LOAD_KERNEL_GS_BASE ; 
 int /*<<< orphan*/  CPU_DESC_LOAD_LDT ; 
 int /*<<< orphan*/  CPU_DESC_LOAD_TSS ; 
 int GDTSZ ; 
 int /*<<< orphan*/  KERNEL_LDT ; 
 int /*<<< orphan*/  KERNEL_TSS ; 
 int /*<<< orphan*/  MSR_IA32_GS_BASE ; 
 int /*<<< orphan*/  MSR_IA32_KERNEL_GS_BASE ; 
 TYPE_7__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (uintptr_t*) ; 
 int /*<<< orphan*/  FUNC2 (uintptr_t*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,uintptr_t) ; 

void
FUNC7(cpu_data_t *cdp)
{
	cpu_desc_index_t	*cdi = &cdp->cpu_desc_index;

	FUNC4(CPU_DESC_LOAD_ENTRY);

	/* Stuff the kernel per-cpu data area address into the MSRs */
	FUNC4(CPU_DESC_LOAD_GS_BASE);
	FUNC6(MSR_IA32_GS_BASE, (uintptr_t) cdp);
	FUNC4(CPU_DESC_LOAD_KERNEL_GS_BASE);
	FUNC6(MSR_IA32_KERNEL_GS_BASE, (uintptr_t) cdp);

	/*
	 * Ensure the TSS segment's busy bit is clear. This is required
	 * for the case of reloading descriptors at wake to avoid
	 * their complete re-initialization.
	 */
	FUNC0(KERNEL_TSS)->access &= ~ACC_TSS_BUSY;

	/* Load the GDT, LDT, IDT and TSS */
	cdi->cdi_gdtb.size = sizeof(struct real_descriptor)*GDTSZ - 1;
	cdi->cdi_gdtu.size = cdi->cdi_gdtb.size;
	cdi->cdi_idtb.size = 0x1000 + cdp->cpu_number;
	cdi->cdi_idtu.size = cdi->cdi_idtb.size;

	FUNC4(CPU_DESC_LOAD_GDT);
	FUNC1((uintptr_t *) &cdi->cdi_gdtu);
	FUNC4(CPU_DESC_LOAD_IDT);
	FUNC2((uintptr_t *) &cdi->cdi_idtu);
	FUNC4(CPU_DESC_LOAD_LDT);
	FUNC3(KERNEL_LDT);
	FUNC4(CPU_DESC_LOAD_TSS);
	FUNC5(KERNEL_TSS);

#if GPROF // Hack to enable mcount to work on K64
	__asm__ volatile("mov %0, %%gs" : : "rm" ((unsigned short)(KERNEL_DS)));
#endif
	FUNC4(CPU_DESC_LOAD_EXIT);
}