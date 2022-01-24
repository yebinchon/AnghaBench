#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int vm_size_t ;
typedef  int /*<<< orphan*/  mca_state_t ;
typedef  int /*<<< orphan*/  mca_mci_bank_t ;
struct TYPE_4__ {int cpu_number; int /*<<< orphan*/ * cpu_mca_state; } ;
typedef  TYPE_1__ cpu_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,int) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 
 int /*<<< orphan*/  master_cpu ; 
 int mca_error_bank_count ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 

void
FUNC4(cpu_data_t	*cdp)
{
	vm_size_t	mca_state_size;

	/*
	 * Allocate space for an array of error banks.
	 */
	mca_state_size = sizeof(mca_state_t) +
				sizeof(mca_mci_bank_t) * mca_error_bank_count;
	cdp->cpu_mca_state = FUNC2(mca_state_size);
	if (cdp->cpu_mca_state == NULL) {
		FUNC3("mca_cpu_alloc() failed for cpu %d\n", cdp->cpu_number);
		return;
	}
	FUNC0((void *) cdp->cpu_mca_state, mca_state_size);

	/*
	 * If the boot processor is yet have its allocation made,
	 * do this now.
	 */
	if (FUNC1(master_cpu)->cpu_mca_state == NULL)
		FUNC4(FUNC1(master_cpu));
}