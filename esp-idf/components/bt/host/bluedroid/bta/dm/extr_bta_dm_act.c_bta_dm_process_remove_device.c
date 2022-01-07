
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ tBT_TRANSPORT ;
struct TYPE_6__ {int status; int bd_addr; } ;
struct TYPE_7__ {TYPE_1__ link_down; } ;
typedef TYPE_2__ tBTA_DM_SEC ;
struct TYPE_8__ {int (* p_sec_cback ) (int ,TYPE_2__*) ;} ;
typedef int BD_ADDR ;


 int BTA_DM_BLE_DEV_UNPAIRED_EVT ;
 int BTA_DM_DEV_UNPAIRED_EVT ;
 int BTA_GATTC_CancelOpen (int ,int ,int ) ;
 int BTA_GATTC_Refresh (int ,int) ;
 int BTM_SecDeleteDevice (int ,scalar_t__) ;
 scalar_t__ BT_TRANSPORT_LE ;
 int FALSE ;
 int HCI_SUCCESS ;
 int bdcpy (int ,int ) ;
 TYPE_5__ bta_dm_cb ;
 int stub1 (int ,TYPE_2__*) ;
 int stub2 (int ,TYPE_2__*) ;

__attribute__((used)) static void bta_dm_process_remove_device(BD_ADDR bd_addr, tBT_TRANSPORT transport)
{


    BTA_GATTC_CancelOpen(0, bd_addr, FALSE);


    BTM_SecDeleteDevice(bd_addr, transport);



    BTA_GATTC_Refresh(bd_addr, 0);

    if (bta_dm_cb.p_sec_cback) {
        tBTA_DM_SEC sec_event;
        bdcpy(sec_event.link_down.bd_addr, bd_addr);
        sec_event.link_down.status = HCI_SUCCESS;
        if (transport == BT_TRANSPORT_LE){
            bta_dm_cb.p_sec_cback(BTA_DM_BLE_DEV_UNPAIRED_EVT, &sec_event);
        } else {
            bta_dm_cb.p_sec_cback(BTA_DM_DEV_UNPAIRED_EVT, &sec_event);
        }

    }
}
