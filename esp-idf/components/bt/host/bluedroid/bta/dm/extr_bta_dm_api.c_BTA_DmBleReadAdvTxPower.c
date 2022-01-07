
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int event; } ;
struct TYPE_5__ {int * read_tx_power_cb; TYPE_1__ hdr; } ;
typedef TYPE_2__ tBTA_DM_API_READ_ADV_TX_POWER ;
typedef int tBTA_CMPL_CB ;


 int BTA_DM_API_BLE_READ_ADV_TX_POWER_EVT ;
 int bta_sys_sendmsg (TYPE_2__*) ;
 scalar_t__ osi_malloc (int) ;

void BTA_DmBleReadAdvTxPower(tBTA_CMPL_CB *cmpl_cb)
{
    tBTA_DM_API_READ_ADV_TX_POWER *p_msg;
    if ((p_msg = (tBTA_DM_API_READ_ADV_TX_POWER *)osi_malloc(sizeof(tBTA_DM_API_READ_ADV_TX_POWER))) != ((void*)0)) {
        p_msg->hdr.event = BTA_DM_API_BLE_READ_ADV_TX_POWER_EVT;
        p_msg->read_tx_power_cb = cmpl_cb;
        bta_sys_sendmsg(p_msg);
    }
}
