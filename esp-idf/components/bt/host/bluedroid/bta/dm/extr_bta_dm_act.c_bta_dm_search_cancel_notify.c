
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tBTA_DM_MSG ;
struct TYPE_2__ {int peer_bdaddr; scalar_t__ gatt_disc_active; int name_discover_done; int (* p_search_cback ) (int ,int *) ;} ;


 int BTA_DM_SEARCH_CANCEL_CMPL_EVT ;
 int BTM_CancelRemoteDeviceName () ;
 int UNUSED (int *) ;
 int bta_dm_cancel_gatt_discovery (int ) ;
 TYPE_1__ bta_dm_search_cb ;
 int stub1 (int ,int *) ;

void bta_dm_search_cancel_notify (tBTA_DM_MSG *p_data)
{
    UNUSED(p_data);
    if (bta_dm_search_cb.p_search_cback) {
        bta_dm_search_cb.p_search_cback(BTA_DM_SEARCH_CANCEL_CMPL_EVT, ((void*)0));
    }
    if (!bta_dm_search_cb.name_discover_done) {
        BTM_CancelRemoteDeviceName();
    }

    if (bta_dm_search_cb.gatt_disc_active) {
        bta_dm_cancel_gatt_discovery(bta_dm_search_cb.peer_bdaddr);
    }


}
