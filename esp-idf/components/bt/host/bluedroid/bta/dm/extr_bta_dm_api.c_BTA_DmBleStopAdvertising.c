
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int event; } ;
typedef TYPE_1__ BT_HDR ;


 int APPL_TRACE_API (char*) ;
 int BTA_DM_API_BLE_STOP_ADV_EVT ;
 int bta_sys_sendmsg (TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;
 scalar_t__ osi_malloc (int) ;

extern void BTA_DmBleStopAdvertising(void)
{
    BT_HDR *p_msg;

    APPL_TRACE_API("BTA_DmBleStopAdvertising\n");

    if ((p_msg = (BT_HDR *) osi_malloc(sizeof(BT_HDR))) != ((void*)0)) {
        memset(p_msg, 0, sizeof(BT_HDR));
        p_msg->event = BTA_DM_API_BLE_STOP_ADV_EVT;
        bta_sys_sendmsg(p_msg);
    }
}
