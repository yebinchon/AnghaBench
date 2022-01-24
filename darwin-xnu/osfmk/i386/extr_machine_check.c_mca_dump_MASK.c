#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_9__ {scalar_t__ u64; } ;
struct TYPE_8__ {scalar_t__ mca_is_saved; TYPE_2__ mca_mcg_status; int /*<<< orphan*/  mca_is_valid; } ;
typedef  TYPE_1__ mca_state_t ;
typedef  TYPE_2__ ia32_mcg_status_t ;
struct TYPE_12__ {TYPE_1__* cpu_mca_state; } ;
struct TYPE_11__ {TYPE_1__* cpu_mca_state; } ;
struct TYPE_10__ {int /*<<< orphan*/  u64; } ;

/* Variables and functions */
 scalar_t__ CLEAR ; 
 scalar_t__ DUMPED ; 
 scalar_t__ DUMPING ; 
 scalar_t__ FALSE ; 
 scalar_t__ LockTimeOut ; 
 TYPE_7__* FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_6__* FUNC2 () ; 
 TYPE_5__ ia32_mcg_cap ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 scalar_t__ mca_dump_state ; 
 int /*<<< orphan*/  mca_error_bank_count ; 
 int /*<<< orphan*/  mca_lock ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (char*,unsigned int,...) ; 
 unsigned int real_ncpus ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

void
FUNC10(void)
{
	mca_state_t	*mca_state = FUNC2()->cpu_mca_state;
	uint64_t	deadline;
	unsigned int	i = 0;

	/*
	 * Capture local MCA registers to per-cpu data.
	 */
	FUNC6(mca_state);

	/*
	 * Serialize: the first caller controls dumping MCA registers,
	 * other threads spin meantime.
	 */
	FUNC8(&mca_lock);
	if (mca_dump_state > CLEAR) {
		FUNC9(&mca_lock);
		while (mca_dump_state == DUMPING)
			FUNC1();
		return;
	}
	mca_dump_state = DUMPING;
	FUNC9(&mca_lock);

	/*
	 * Wait for all other hardware threads to save their state.
	 * Or timeout.
	 */
	deadline = FUNC3() + LockTimeOut;
	while (FUNC3() < deadline && i < real_ncpus) {
		if (!FUNC0(i)->cpu_mca_state->mca_is_saved) {
			FUNC1();
			continue;
		}
		i += 1;
	}

	/*
	 * Report machine-check capabilities:
	 */
	FUNC7("Machine-check capabilities: 0x%016qx\n", ia32_mcg_cap.u64);

	FUNC5();

	FUNC7(" %d error-reporting banks\n", mca_error_bank_count);
 
	/*
	 * Dump all processor state:
	 */
	for (i = 0; i < real_ncpus; i++) {
		mca_state_t		*mcsp = FUNC0(i)->cpu_mca_state;
		ia32_mcg_status_t	status;

		if (mcsp == NULL ||
		    mcsp->mca_is_saved == FALSE ||
		    mcsp->mca_mcg_status.u64 == 0 ||
		    !mcsp->mca_is_valid) {
			continue;
		}
		status = mcsp->mca_mcg_status;
		FUNC7("Processor %d: IA32_MCG_STATUS: 0x%016qx\n",
			i, status.u64);
		FUNC4(mcsp);
	}

	/* Update state to release any other threads. */
	mca_dump_state = DUMPED;
}