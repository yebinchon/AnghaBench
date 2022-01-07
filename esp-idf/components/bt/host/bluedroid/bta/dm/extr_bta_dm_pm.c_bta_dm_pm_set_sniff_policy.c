
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int link_policy; int peer_bdaddr; } ;
typedef TYPE_1__ tBTA_DM_PEER_DEVICE ;
typedef int UINT16 ;
struct TYPE_5__ {int cur_policy; } ;
typedef scalar_t__ BOOLEAN ;


 int BTM_SetLinkPolicy (int ,int*) ;
 int HCI_ENABLE_HOLD_MODE ;
 int HCI_ENABLE_MASTER_SLAVE_SWITCH ;
 int HCI_ENABLE_PARK_MODE ;
 TYPE_3__ bta_dm_cb ;
 int bta_dm_pm_active (int ) ;

__attribute__((used)) static void bta_dm_pm_set_sniff_policy(tBTA_DM_PEER_DEVICE *p_dev, BOOLEAN bDisable)
{
    UINT16 policy_setting;

    if (!p_dev) {
        return;
    }

    if (bDisable) {
        policy_setting = bta_dm_cb.cur_policy &
                         (HCI_ENABLE_MASTER_SLAVE_SWITCH |
                          HCI_ENABLE_HOLD_MODE |
                          HCI_ENABLE_PARK_MODE);

    } else {

        policy_setting = bta_dm_cb.cur_policy;
    }


    if (bDisable) {
        bta_dm_pm_active(p_dev->peer_bdaddr);
    }


    p_dev->link_policy = policy_setting;
    BTM_SetLinkPolicy(p_dev->peer_bdaddr, &policy_setting);

}
