#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  nsmep ;
typedef  int /*<<< orphan*/  nsmap ;
struct TYPE_5__ {scalar_t__ cpu_fixed_pmcs_enabled; int /*<<< orphan*/  cpu_task_map; void* cpu_tlb_invalid; int /*<<< orphan*/  cpu_active_cr3; int /*<<< orphan*/  cpu_kernel_cr3; int /*<<< orphan*/  cpu_number; } ;
typedef  TYPE_1__ cpu_data_t ;
typedef  void* boolean_t ;
struct TYPE_7__ {int /*<<< orphan*/  cpu_kernel_cr3; } ;
struct TYPE_6__ {int /*<<< orphan*/  pm_cr3; } ;

/* Variables and functions */
 int CPUID_LEAF7_FEATURE_SMAP ; 
 int CPUID_LEAF7_FEATURE_SMEP ; 
 int CR4_PGE ; 
 int CR4_SMAP ; 
 int CR4_SMEP ; 
 void* FALSE ; 
 scalar_t__ FUNC0 (char*,void**,int) ; 
 int /*<<< orphan*/  TASK_MAP_64BIT ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC1 (void**) ; 
 TYPE_4__* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 () ; 
 TYPE_1__* FUNC4 () ; 
 int FUNC5 () ; 
 TYPE_2__* kernel_pmap ; 
 int /*<<< orphan*/  FUNC6 () ; 
 void* pmap_smap_enabled ; 
 void* pmap_smep_enabled ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

void
FUNC8(void)
{
	cpu_data_t	*cdp = FUNC4();

	FUNC7(FUNC5() | CR4_PGE);

	/*
	 * Initialize the per-cpu, TLB-related fields.
	 */
	cdp->cpu_kernel_cr3 = kernel_pmap->pm_cr3;
	FUNC2(cdp->cpu_number)->cpu_kernel_cr3 = cdp->cpu_kernel_cr3;
	cdp->cpu_active_cr3 = kernel_pmap->pm_cr3;
	cdp->cpu_tlb_invalid = FALSE;
	cdp->cpu_task_map = TASK_MAP_64BIT;

	FUNC6();
	if (FUNC3() & CPUID_LEAF7_FEATURE_SMEP) {
		pmap_smep_enabled = TRUE;
#if	DEVELOPMENT || DEBUG
		boolean_t nsmep;
		if (PE_parse_boot_argn("-pmap_smep_disable", &nsmep, sizeof(nsmep))) {
			pmap_smep_enabled = FALSE;
		}
#endif
		if (pmap_smep_enabled) {
			FUNC7(FUNC5() | CR4_SMEP);
		}

	}
	if (FUNC3() & CPUID_LEAF7_FEATURE_SMAP) {
		pmap_smap_enabled = TRUE;
#if DEVELOPMENT || DEBUG
		boolean_t nsmap;
		if (PE_parse_boot_argn("-pmap_smap_disable", &nsmap, sizeof(nsmap))) {
			pmap_smap_enabled = FALSE;
		}
#endif
		if (pmap_smap_enabled) {
			FUNC7(FUNC5() | CR4_SMAP);
		}
	}

#if !MONOTONIC
	if (cdp->cpu_fixed_pmcs_enabled) {
		boolean_t enable = TRUE;
		FUNC1(&enable);
	}
#endif /* !MONOTONIC */
}