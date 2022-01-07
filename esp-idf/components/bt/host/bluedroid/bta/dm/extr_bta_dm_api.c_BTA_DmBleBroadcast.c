
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int tBTA_START_STOP_ADV_CMPL_CBACK ;
struct TYPE_5__ {int event; } ;
struct TYPE_6__ {int * p_stop_adv_cback; scalar_t__ start; TYPE_1__ hdr; } ;
typedef TYPE_2__ tBTA_DM_API_BLE_OBSERVE ;
typedef scalar_t__ BOOLEAN ;


 int APPL_TRACE_API (char*,scalar_t__) ;
 int BTA_DM_API_BLE_BROADCAST_EVT ;
 scalar_t__ FALSE ;
 int bta_sys_sendmsg (TYPE_2__*) ;
 int memset (TYPE_2__*,int ,int) ;
 scalar_t__ osi_malloc (int) ;

extern void BTA_DmBleBroadcast (BOOLEAN start, tBTA_START_STOP_ADV_CMPL_CBACK *p_start_stop_adv_cb)
{
    tBTA_DM_API_BLE_OBSERVE *p_msg;

    APPL_TRACE_API("BTA_DmBleBroadcast: start = %d \n", start);

    if ((p_msg = (tBTA_DM_API_BLE_OBSERVE *) osi_malloc(sizeof(tBTA_DM_API_BLE_OBSERVE))) != ((void*)0)) {
        memset(p_msg, 0, sizeof(tBTA_DM_API_BLE_OBSERVE));

        p_msg->hdr.event = BTA_DM_API_BLE_BROADCAST_EVT;
        p_msg->start = start;
        if (start == FALSE){
            p_msg->p_stop_adv_cback= p_start_stop_adv_cb;
        }

        bta_sys_sendmsg(p_msg);
    }
}
