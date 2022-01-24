#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int link_policy; int /*<<< orphan*/  peer_bdaddr; } ;
typedef  TYPE_1__ tBTA_DM_PEER_DEVICE ;
typedef  int UINT16 ;
struct TYPE_5__ {int cur_policy; } ;
typedef  scalar_t__ BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int*) ; 
 int HCI_ENABLE_HOLD_MODE ; 
 int HCI_ENABLE_MASTER_SLAVE_SWITCH ; 
 int HCI_ENABLE_PARK_MODE ; 
 TYPE_3__ bta_dm_cb ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(tBTA_DM_PEER_DEVICE *p_dev, BOOLEAN bDisable)
{
    UINT16 policy_setting;

    if (!p_dev) {
        return;
    }

    if (bDisable) {
        policy_setting = bta_dm_cb.cur_policy &
                         (HCI_ENABLE_MASTER_SLAVE_SWITCH |
                          HCI_ENABLE_HOLD_MODE  |
                          HCI_ENABLE_PARK_MODE);

    } else {
        /*  allow sniff after sco is closed */
        policy_setting = bta_dm_cb.cur_policy;
    }

    /* if disabling SNIFF, make sure link is Active */
    if (bDisable) {
        FUNC1(p_dev->peer_bdaddr);
    }

    /* update device record and set link policy */
    p_dev->link_policy = policy_setting;
    FUNC0(p_dev->peer_bdaddr, &policy_setting);

}