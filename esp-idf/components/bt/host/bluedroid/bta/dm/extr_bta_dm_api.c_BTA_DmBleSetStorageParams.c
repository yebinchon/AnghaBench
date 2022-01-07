
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int tBTA_DM_BLE_REF_VALUE ;
struct TYPE_5__ {int event; } ;
struct TYPE_6__ {void* batch_scan_notify_threshold; void* batch_scan_trunc_max; void* batch_scan_full_max; int ref_value; int * p_read_rep_cback; int * p_thres_cback; int p_setup_cback; TYPE_1__ hdr; } ;
typedef TYPE_2__ tBTA_DM_API_SET_STORAGE_CONFIG ;
typedef int tBTA_BLE_SCAN_THRESHOLD_CBACK ;
typedef int tBTA_BLE_SCAN_SETUP_CBACK ;
typedef int tBTA_BLE_SCAN_REP_CBACK ;
typedef void* UINT8 ;
struct TYPE_7__ {int * p_setup_cback; } ;


 int BTA_DM_API_BLE_SETUP_STORAGE_EVT ;
 int bta_ble_scan_setup_cb ;
 TYPE_4__ bta_dm_cb ;
 int bta_sys_sendmsg (TYPE_2__*) ;
 scalar_t__ osi_malloc (int) ;

extern void BTA_DmBleSetStorageParams(UINT8 batch_scan_full_max,
                                      UINT8 batch_scan_trunc_max,
                                      UINT8 batch_scan_notify_threshold,
                                      tBTA_BLE_SCAN_SETUP_CBACK *p_setup_cback,
                                      tBTA_BLE_SCAN_THRESHOLD_CBACK *p_thres_cback,
                                      tBTA_BLE_SCAN_REP_CBACK *p_rep_cback,
                                      tBTA_DM_BLE_REF_VALUE ref_value)
{
    tBTA_DM_API_SET_STORAGE_CONFIG *p_msg;
    bta_dm_cb.p_setup_cback = p_setup_cback;
    if ((p_msg = (tBTA_DM_API_SET_STORAGE_CONFIG *)
                 osi_malloc(sizeof(tBTA_DM_API_SET_STORAGE_CONFIG))) != ((void*)0)) {
        p_msg->hdr.event = BTA_DM_API_BLE_SETUP_STORAGE_EVT;
        p_msg->p_setup_cback = bta_ble_scan_setup_cb;
        p_msg->p_thres_cback = p_thres_cback;
        p_msg->p_read_rep_cback = p_rep_cback;
        p_msg->ref_value = ref_value;
        p_msg->batch_scan_full_max = batch_scan_full_max;
        p_msg->batch_scan_trunc_max = batch_scan_trunc_max;
        p_msg->batch_scan_notify_threshold = batch_scan_notify_threshold;
        bta_sys_sendmsg(p_msg);
    }
}
