#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  s32 ;
typedef  int /*<<< orphan*/  btecallback ;
struct TYPE_3__ {scalar_t__ hci_cmddone; int /*<<< orphan*/ * usrdata; int /*<<< orphan*/  cb; } ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_OK ; 
 int /*<<< orphan*/  HCI_VENDOR_OGF ; 
 int /*<<< orphan*/  HCI_VENDOR_PATCH_START_OCF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bte_hci_apply_patch_complete ; 
 TYPE_1__ btstate ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

s32 FUNC5(btecallback cb)
{
	u32 level;
	u8 kick = 0;

	FUNC0(level);
	btstate.cb = cb;
	btstate.usrdata = NULL;
	btstate.hci_cmddone = 0;
	FUNC2(&btstate);
	FUNC3(bte_hci_apply_patch_complete);
	FUNC4(HCI_VENDOR_PATCH_START_OCF,HCI_VENDOR_OGF,&kick,1);
	FUNC1(level);

	return ERR_OK;
}