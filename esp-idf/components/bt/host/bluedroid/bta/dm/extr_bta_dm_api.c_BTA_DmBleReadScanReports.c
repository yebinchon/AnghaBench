
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tBTA_DM_BLE_REF_VALUE ;
struct TYPE_4__ {int event; } ;
struct TYPE_5__ {int ref_value; int scan_type; TYPE_1__ hdr; } ;
typedef TYPE_2__ tBTA_DM_API_READ_SCAN_REPORTS ;
typedef int tBTA_BLE_BATCH_SCAN_MODE ;


 int BTA_DM_API_BLE_READ_SCAN_REPORTS_EVT ;
 int bta_sys_sendmsg (TYPE_2__*) ;
 scalar_t__ osi_malloc (int) ;

extern void BTA_DmBleReadScanReports(tBTA_BLE_BATCH_SCAN_MODE scan_type,
                                     tBTA_DM_BLE_REF_VALUE ref_value)
{
    tBTA_DM_API_READ_SCAN_REPORTS *p_msg;

    if ((p_msg = (tBTA_DM_API_READ_SCAN_REPORTS *)
                 osi_malloc(sizeof(tBTA_DM_API_READ_SCAN_REPORTS))) != ((void*)0)) {
        p_msg->hdr.event = BTA_DM_API_BLE_READ_SCAN_REPORTS_EVT;
        p_msg->scan_type = scan_type;
        p_msg->ref_value = ref_value;
        bta_sys_sendmsg(p_msg);
    }
}
