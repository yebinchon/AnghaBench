
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int event; } ;
struct TYPE_6__ {int remote_bda; TYPE_1__ hdr; } ;
typedef TYPE_2__ tBTA_DM_API_BLE_DISCONNECT ;
typedef int BD_ADDR ;


 int BTA_DM_API_BLE_DISCONNECT_EVT ;
 int bdcpy (int ,int ) ;
 int bta_sys_sendmsg (TYPE_2__*) ;
 int memset (TYPE_2__*,int ,int) ;
 scalar_t__ osi_malloc (int) ;

void BTA_DmBleDisconnect(BD_ADDR bd_addr)
{
    tBTA_DM_API_BLE_DISCONNECT *p_msg;

    if ((p_msg = (tBTA_DM_API_BLE_DISCONNECT *) osi_malloc(sizeof(tBTA_DM_API_BLE_DISCONNECT))) != ((void*)0)) {
        memset (p_msg, 0, sizeof(tBTA_DM_API_BLE_DISCONNECT));

        p_msg->hdr.event = BTA_DM_API_BLE_DISCONNECT_EVT;
        bdcpy(p_msg->remote_bda, bd_addr);

        bta_sys_sendmsg(p_msg);
    }
}
