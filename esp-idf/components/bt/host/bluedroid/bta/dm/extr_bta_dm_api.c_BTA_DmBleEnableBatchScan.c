
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tBTA_DM_BLE_REF_VALUE ;
struct TYPE_4__ {int event; } ;
struct TYPE_5__ {int ref_value; int addr_type; int discard_rule; void* scan_window; void* scan_int; int scan_mode; TYPE_1__ hdr; } ;
typedef TYPE_2__ tBTA_DM_API_ENABLE_SCAN ;
typedef int tBTA_BLE_DISCARD_RULE ;
typedef int tBTA_BLE_BATCH_SCAN_MODE ;
typedef int tBLE_ADDR_TYPE ;
typedef void* UINT32 ;


 int BTA_DM_API_BLE_ENABLE_BATCH_SCAN_EVT ;
 int bta_sys_sendmsg (TYPE_2__*) ;
 scalar_t__ osi_malloc (int) ;

extern void BTA_DmBleEnableBatchScan(tBTA_BLE_BATCH_SCAN_MODE scan_mode,
                                     UINT32 scan_interval, UINT32 scan_window,
                                     tBTA_BLE_DISCARD_RULE discard_rule,
                                     tBLE_ADDR_TYPE addr_type,
                                     tBTA_DM_BLE_REF_VALUE ref_value)
{
    tBTA_DM_API_ENABLE_SCAN *p_msg;

    if ((p_msg = (tBTA_DM_API_ENABLE_SCAN *) osi_malloc(sizeof(tBTA_DM_API_ENABLE_SCAN))) != ((void*)0)) {
        p_msg->hdr.event = BTA_DM_API_BLE_ENABLE_BATCH_SCAN_EVT;
        p_msg->scan_mode = scan_mode;
        p_msg->scan_int = scan_interval;
        p_msg->scan_window = scan_window;
        p_msg->discard_rule = discard_rule;
        p_msg->addr_type = addr_type;
        p_msg->ref_value = ref_value;
        bta_sys_sendmsg(p_msg);
    }
}
