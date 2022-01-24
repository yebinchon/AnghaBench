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
typedef  int tBTA_SYS_CONN_STATUS ;
struct TYPE_4__ {int link_policy; int /*<<< orphan*/  peer_bdaddr; } ;
typedef  TYPE_1__ tBTA_DM_PEER_DEVICE ;
typedef  int UINT8 ;
typedef  int /*<<< orphan*/  UINT32 ;
typedef  int UINT16 ;
struct TYPE_5__ {int /*<<< orphan*/  cur_policy; int /*<<< orphan*/  role_policy_mask; } ;
typedef  scalar_t__ BD_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
#define  BTA_SYS_PLCY_CLR 131 
#define  BTA_SYS_PLCY_DEF_CLR 130 
#define  BTA_SYS_PLCY_DEF_SET 129 
#define  BTA_SYS_PLCY_SET 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  HCI_ENABLE_MASTER_SLAVE_SWITCH ; 
 int HCI_ENABLE_PARK_MODE ; 
 int HCI_ENABLE_SNIFF_MODE ; 
 TYPE_3__ bta_dm_cb ; 
 TYPE_1__* FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(tBTA_SYS_CONN_STATUS status, UINT8 id, UINT8 app_id, BD_ADDR peer_addr)
{
    tBTA_DM_PEER_DEVICE *p_dev = NULL;
    UINT16  policy = app_id;
    UINT32  mask = (UINT32)(1 << id);

    if (peer_addr) {
        p_dev = FUNC3(peer_addr);
    }

    FUNC0(" bta_dm_policy_cback cmd:%d, policy:0x%x",
                     status, policy);
    switch (status) {
    case BTA_SYS_PLCY_SET:
        if (!p_dev) {
            return;
        }
        /* restore the default link policy */
        p_dev->link_policy |= policy;
        FUNC2(p_dev->peer_bdaddr, &(p_dev->link_policy));
        break;

    case BTA_SYS_PLCY_CLR:
        if (!p_dev) {
            return;
        }
        /* clear the policy from the default link policy */
        p_dev->link_policy &= (~policy);
        FUNC2(p_dev->peer_bdaddr, &(p_dev->link_policy));

#if (BTA_DM_PM_INCLUDED == TRUE)
        if (policy & (HCI_ENABLE_SNIFF_MODE | HCI_ENABLE_PARK_MODE)) {
            /* if clearing sniff/park, wake the link */
            FUNC4(p_dev->peer_bdaddr);
        }
#endif /* #if (BTA_DM_PM_INCLUDED == TRUE) */
        break;

    case BTA_SYS_PLCY_DEF_SET:
        /* want to restore/set the role switch policy */
        bta_dm_cb.role_policy_mask &= ~mask;
        if (0 == bta_dm_cb.role_policy_mask) {
            /* if nobody wants to insist on the role */
            bta_dm_cb.cur_policy |= HCI_ENABLE_MASTER_SLAVE_SWITCH;
            FUNC1(bta_dm_cb.cur_policy);
        }
        break;

    case BTA_SYS_PLCY_DEF_CLR:
        /* want to remove the role switch policy */
        bta_dm_cb.role_policy_mask |= mask;
        bta_dm_cb.cur_policy &= ~HCI_ENABLE_MASTER_SLAVE_SWITCH;
        FUNC1(bta_dm_cb.cur_policy);
        break;
    }
}