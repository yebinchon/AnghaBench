#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_3__* mca_error_bank; } ;
typedef  TYPE_2__ mca_state_t ;
struct TYPE_6__ {scalar_t__ miscv; scalar_t__ addrv; int /*<<< orphan*/  val; } ;
struct TYPE_9__ {TYPE_1__ bits; int /*<<< orphan*/  u64; } ;
struct TYPE_8__ {int /*<<< orphan*/  mca_mci_misc; int /*<<< orphan*/  mca_mci_addr; TYPE_4__ mca_mci_status; } ;
typedef  TYPE_3__ mca_mci_bank_t ;
typedef  TYPE_4__ ia32_mci_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(mca_state_t *state, int i)
{
	mca_mci_bank_t		*bank;
	ia32_mci_status_t	status;

	bank = &state->mca_error_bank[i];
	status = bank->mca_mci_status;
	if (!status.bits.val)
		return;

	FUNC3(" IA32_MC%d_STATUS(0x%x): 0x%016qx\n",
		i, FUNC2(i), status.u64);

	if (status.bits.addrv)
		FUNC3(" IA32_MC%d_ADDR(0x%x):   0x%016qx\n",
			i, FUNC0(i), bank->mca_mci_addr);

	if (status.bits.miscv)
		FUNC3(" IA32_MC%d_MISC(0x%x):   0x%016qx\n",
			i, FUNC1(i), bank->mca_mci_misc);
}