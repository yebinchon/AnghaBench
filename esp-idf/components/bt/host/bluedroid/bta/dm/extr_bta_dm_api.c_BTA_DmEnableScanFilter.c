
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int * tBTA_DM_BLE_REF_VALUE ;
typedef int tBTA_DM_BLE_PF_STATUS_CBACK ;
struct TYPE_5__ {int event; } ;
struct TYPE_6__ {int * p_filt_status_cback; int * ref_value; int * action; TYPE_1__ hdr; } ;
typedef TYPE_2__ tBTA_DM_API_ENABLE_SCAN_FILTER ;
typedef int tBLE_BD_ADDR ;
typedef int * UINT8 ;
typedef int UINT16 ;


 int APPL_TRACE_API (char*,int *) ;
 int BTA_DM_API_SCAN_FILTER_ENABLE_EVT ;
 int UNUSED (int *) ;
 int bta_sys_sendmsg (TYPE_2__*) ;
 int memset (TYPE_2__*,int ,int) ;
 scalar_t__ osi_malloc (int) ;

void BTA_DmEnableScanFilter(UINT8 action, tBTA_DM_BLE_PF_STATUS_CBACK *p_cmpl_cback,
                            tBTA_DM_BLE_REF_VALUE ref_value)
{

    tBTA_DM_API_ENABLE_SCAN_FILTER *p_msg;
    APPL_TRACE_API ("BTA_DmEnableScanFilter: %d\n", action);

    UINT16 len = sizeof(tBTA_DM_API_ENABLE_SCAN_FILTER) + sizeof(tBLE_BD_ADDR);

    if ((p_msg = (tBTA_DM_API_ENABLE_SCAN_FILTER *) osi_malloc(len)) != ((void*)0)) {
        memset (p_msg, 0, len);

        p_msg->hdr.event = BTA_DM_API_SCAN_FILTER_ENABLE_EVT;
        p_msg->action = action;
        p_msg->ref_value = ref_value;
        p_msg->p_filt_status_cback = p_cmpl_cback;

        bta_sys_sendmsg(p_msg);
    }





}
