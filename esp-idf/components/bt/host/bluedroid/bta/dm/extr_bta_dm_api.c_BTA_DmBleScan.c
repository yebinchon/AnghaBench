
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int tBTA_START_STOP_SCAN_CMPL_CBACK ;
typedef int tBTA_DM_SEARCH_CBACK ;
struct TYPE_5__ {int event; } ;
struct TYPE_6__ {int * p_stop_scan_cback; int * p_start_scan_cback; int * p_cback; int duration; scalar_t__ start; TYPE_1__ hdr; } ;
typedef TYPE_2__ tBTA_DM_API_BLE_SCAN ;
typedef int UINT32 ;
typedef scalar_t__ BOOLEAN ;


 int APPL_TRACE_API (char*,scalar_t__) ;
 int BTA_DM_API_BLE_SCAN_EVT ;
 int bta_sys_sendmsg (TYPE_2__*) ;
 int memset (TYPE_2__*,int ,int) ;
 scalar_t__ osi_malloc (int) ;

extern void BTA_DmBleScan(BOOLEAN start, UINT32 duration,
                             tBTA_DM_SEARCH_CBACK *p_results_cb,
                             tBTA_START_STOP_SCAN_CMPL_CBACK *p_start_stop_scan_cb)
{
    tBTA_DM_API_BLE_SCAN *p_msg;

    APPL_TRACE_API("BTA_DmBleScan:start = %d ", start);

    if ((p_msg = (tBTA_DM_API_BLE_SCAN *) osi_malloc(sizeof(tBTA_DM_API_BLE_SCAN))) != ((void*)0)) {
        memset(p_msg, 0, sizeof(tBTA_DM_API_BLE_SCAN));

        p_msg->hdr.event = BTA_DM_API_BLE_SCAN_EVT;
        p_msg->start = start;
        p_msg->duration = duration;
        p_msg->p_cback = p_results_cb;
        if (start){
            p_msg->p_start_scan_cback = p_start_stop_scan_cb;
        }
        else {
            p_msg->p_stop_scan_cback = p_start_stop_scan_cb;
        }

        bta_sys_sendmsg(p_msg);
    }
}
