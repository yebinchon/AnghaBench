
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int event; } ;
struct TYPE_6__ {void* scan_window; void* scan_int; TYPE_1__ hdr; } ;
typedef TYPE_2__ tBTA_DM_API_BLE_SCAN_PARAMS ;
typedef void* UINT32 ;


 int BTA_DM_API_BLE_CONN_SCAN_PARAM_EVT ;
 int bta_sys_sendmsg (TYPE_2__*) ;
 int memset (TYPE_2__*,int ,int) ;
 scalar_t__ osi_malloc (int) ;

void BTA_DmSetBleConnScanParams(UINT32 scan_interval, UINT32 scan_window)
{
    tBTA_DM_API_BLE_SCAN_PARAMS *p_msg;
    if ((p_msg = (tBTA_DM_API_BLE_SCAN_PARAMS *)osi_malloc(sizeof(tBTA_DM_API_BLE_SCAN_PARAMS))) != ((void*)0)) {
        memset(p_msg, 0, sizeof(tBTA_DM_API_BLE_SCAN_PARAMS));
        p_msg->hdr.event = BTA_DM_API_BLE_CONN_SCAN_PARAM_EVT;
        p_msg->scan_int = scan_interval;
        p_msg->scan_window = scan_window;
        bta_sys_sendmsg(p_msg);
    }
}
