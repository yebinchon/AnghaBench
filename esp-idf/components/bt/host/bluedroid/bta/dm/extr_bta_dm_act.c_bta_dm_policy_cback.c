
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tBTA_SYS_CONN_STATUS ;
struct TYPE_4__ {int link_policy; int peer_bdaddr; } ;
typedef TYPE_1__ tBTA_DM_PEER_DEVICE ;
typedef int UINT8 ;
typedef int UINT32 ;
typedef int UINT16 ;
struct TYPE_5__ {int cur_policy; int role_policy_mask; } ;
typedef scalar_t__ BD_ADDR ;


 int APPL_TRACE_DEBUG (char*,int,int) ;




 int BTM_SetDefaultLinkPolicy (int ) ;
 int BTM_SetLinkPolicy (int ,int*) ;
 int HCI_ENABLE_MASTER_SLAVE_SWITCH ;
 int HCI_ENABLE_PARK_MODE ;
 int HCI_ENABLE_SNIFF_MODE ;
 TYPE_3__ bta_dm_cb ;
 TYPE_1__* bta_dm_find_peer_device (scalar_t__) ;
 int bta_dm_pm_active (int ) ;

__attribute__((used)) static void bta_dm_policy_cback(tBTA_SYS_CONN_STATUS status, UINT8 id, UINT8 app_id, BD_ADDR peer_addr)
{
    tBTA_DM_PEER_DEVICE *p_dev = ((void*)0);
    UINT16 policy = app_id;
    UINT32 mask = (UINT32)(1 << id);

    if (peer_addr) {
        p_dev = bta_dm_find_peer_device(peer_addr);
    }

    APPL_TRACE_DEBUG(" bta_dm_policy_cback cmd:%d, policy:0x%x",
                     status, policy);
    switch (status) {
    case 128:
        if (!p_dev) {
            return;
        }

        p_dev->link_policy |= policy;
        BTM_SetLinkPolicy(p_dev->peer_bdaddr, &(p_dev->link_policy));
        break;

    case 131:
        if (!p_dev) {
            return;
        }

        p_dev->link_policy &= (~policy);
        BTM_SetLinkPolicy(p_dev->peer_bdaddr, &(p_dev->link_policy));


        if (policy & (HCI_ENABLE_SNIFF_MODE | HCI_ENABLE_PARK_MODE)) {

            bta_dm_pm_active(p_dev->peer_bdaddr);
        }

        break;

    case 129:

        bta_dm_cb.role_policy_mask &= ~mask;
        if (0 == bta_dm_cb.role_policy_mask) {

            bta_dm_cb.cur_policy |= HCI_ENABLE_MASTER_SLAVE_SWITCH;
            BTM_SetDefaultLinkPolicy(bta_dm_cb.cur_policy);
        }
        break;

    case 130:

        bta_dm_cb.role_policy_mask |= mask;
        bta_dm_cb.cur_policy &= ~HCI_ENABLE_MASTER_SLAVE_SWITCH;
        BTM_SetDefaultLinkPolicy(bta_dm_cb.cur_policy);
        break;
    }
}
