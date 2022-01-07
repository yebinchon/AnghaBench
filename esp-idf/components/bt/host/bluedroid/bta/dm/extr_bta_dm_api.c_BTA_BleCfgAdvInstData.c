
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int event; } ;
struct TYPE_6__ {int * p_data; int data_mask; int is_scan_rsp; int inst_id; TYPE_1__ hdr; } ;
typedef TYPE_2__ tBTA_DM_API_BLE_MULTI_ADV_DATA ;
typedef int tBTA_BLE_AD_MASK ;
typedef int tBTA_BLE_ADV_DATA ;
typedef int UINT8 ;
typedef int UINT16 ;
typedef int BOOLEAN ;


 int APPL_TRACE_API (char*) ;
 int BTA_DM_API_BLE_MULTI_ADV_DATA_EVT ;
 int bta_sys_sendmsg (TYPE_2__*) ;
 int memset (TYPE_2__*,int ,int) ;
 scalar_t__ osi_malloc (int) ;

void BTA_BleCfgAdvInstData (UINT8 inst_id, BOOLEAN is_scan_rsp,
                            tBTA_BLE_AD_MASK data_mask,
                            tBTA_BLE_ADV_DATA *p_data)
{

    tBTA_DM_API_BLE_MULTI_ADV_DATA *p_msg;
    UINT16 len = sizeof(tBTA_DM_API_BLE_MULTI_ADV_DATA) ;

    APPL_TRACE_API ("BTA_BleCfgAdvInstData");

    if ((p_msg = (tBTA_DM_API_BLE_MULTI_ADV_DATA *) osi_malloc(len)) != ((void*)0)) {
        memset(p_msg, 0, len);
        p_msg->hdr.event = BTA_DM_API_BLE_MULTI_ADV_DATA_EVT;
        p_msg->inst_id = inst_id;
        p_msg->is_scan_rsp = is_scan_rsp;
        p_msg->data_mask = data_mask;
        p_msg->p_data = p_data;

        bta_sys_sendmsg(p_msg);
    }
}
