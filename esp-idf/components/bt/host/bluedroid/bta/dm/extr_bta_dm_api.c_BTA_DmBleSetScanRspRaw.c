
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tBTA_SET_ADV_DATA_CMPL_CBACK ;
struct TYPE_4__ {int event; } ;
struct TYPE_5__ {scalar_t__ raw_adv_len; int * p_raw_adv; int * p_adv_data_cback; TYPE_1__ hdr; } ;
typedef TYPE_2__ tBTA_DM_API_SET_ADV_CONFIG_RAW ;
typedef int UINT8 ;
typedef scalar_t__ UINT32 ;


 int BTA_DM_API_BLE_SET_SCAN_RSP_RAW_EVT ;
 int bta_sys_sendmsg (TYPE_2__*) ;
 int memcpy (int *,int *,scalar_t__) ;
 scalar_t__ osi_malloc (scalar_t__) ;

void BTA_DmBleSetScanRspRaw (UINT8 *p_raw_scan_rsp, UINT32 raw_scan_rsp_len,
                            tBTA_SET_ADV_DATA_CMPL_CBACK *p_scan_rsp_data_cback)
{
    tBTA_DM_API_SET_ADV_CONFIG_RAW *p_msg;

    if ((p_msg = (tBTA_DM_API_SET_ADV_CONFIG_RAW *)
                 osi_malloc(sizeof(tBTA_DM_API_SET_ADV_CONFIG_RAW) + raw_scan_rsp_len)) != ((void*)0)) {
        p_msg->hdr.event = BTA_DM_API_BLE_SET_SCAN_RSP_RAW_EVT;
        p_msg->p_adv_data_cback = p_scan_rsp_data_cback;
        p_msg->p_raw_adv = (UINT8 *)(p_msg + 1);
        memcpy(p_msg->p_raw_adv, p_raw_scan_rsp, raw_scan_rsp_len);
        p_msg->raw_adv_len = raw_scan_rsp_len;

        bta_sys_sendmsg(p_msg);
    }
}
