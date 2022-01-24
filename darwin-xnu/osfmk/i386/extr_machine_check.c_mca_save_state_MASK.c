#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {unsigned long long u64; } ;
struct TYPE_11__ {unsigned long long mca_mcg_ctl; void* mca_is_saved; void* mca_is_valid; int /*<<< orphan*/ * mca_error_bank; TYPE_1__ mca_mcg_status; } ;
typedef  TYPE_4__ mca_state_t ;
struct TYPE_9__ {scalar_t__ addrv; scalar_t__ miscv; int /*<<< orphan*/  val; } ;
struct TYPE_10__ {unsigned long long u64; TYPE_2__ bits; } ;
struct TYPE_12__ {unsigned long long mca_mci_ctl; unsigned long long mca_mci_misc; unsigned long long mca_mci_addr; TYPE_3__ mca_mci_status; } ;
typedef  TYPE_5__ mca_mci_bank_t ;
struct TYPE_13__ {TYPE_4__* mca_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  IA32_MCG_CTL ; 
 int /*<<< orphan*/  IA32_MCG_STATUS ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ mca_control_MSR_present ; 
 unsigned int mca_error_bank_count ; 
 int /*<<< orphan*/  FUNC6 () ; 
 unsigned long long FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC8 () ; 

__attribute__((used)) static void
FUNC9(mca_state_t *mca_state)
{
	mca_mci_bank_t  *bank;
	unsigned int	i;

	FUNC4(!FUNC6() || FUNC5() > 0);

	if  (mca_state == NULL)
		return;

	mca_state->mca_mcg_ctl = mca_control_MSR_present ?
					FUNC7(IA32_MCG_CTL) : 0ULL;	
	mca_state->mca_mcg_status.u64 = FUNC7(IA32_MCG_STATUS);

 	bank = (mca_mci_bank_t *) &mca_state->mca_error_bank[0];
	for (i = 0; i < mca_error_bank_count; i++, bank++) {
		bank->mca_mci_ctl        = FUNC7(FUNC1(i));	
		bank->mca_mci_status.u64 = FUNC7(FUNC3(i));	
		if (!bank->mca_mci_status.bits.val)
			continue;
		bank->mca_mci_misc = (bank->mca_mci_status.bits.miscv)?
					FUNC7(FUNC2(i)) : 0ULL;	
		bank->mca_mci_addr = (bank->mca_mci_status.bits.addrv)?
					FUNC7(FUNC0(i)) : 0ULL;	
		mca_state->mca_is_valid = TRUE;
	} 

	/*
	 * If we're the first thread with MCA state, point our package to it
	 * and don't care about races
	 */
	if (FUNC8()->mca_state == NULL)
		FUNC8()->mca_state = mca_state;

	mca_state->mca_is_saved = TRUE;
}