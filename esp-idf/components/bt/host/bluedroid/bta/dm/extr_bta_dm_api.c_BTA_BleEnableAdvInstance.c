
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int event; } ;
struct TYPE_6__ {void* p_ref; void* p_params; void* p_cback; TYPE_1__ hdr; } ;
typedef TYPE_2__ tBTA_DM_API_BLE_MULTI_ADV_ENB ;
typedef int tBTA_BLE_MULTI_ADV_CBACK ;
typedef int tBTA_BLE_ADV_PARAMS ;
typedef int UINT16 ;


 int APPL_TRACE_API (char*) ;
 int BTA_DM_API_BLE_MULTI_ADV_ENB_EVT ;
 int bta_sys_sendmsg (TYPE_2__*) ;
 int memcpy (void*,int *,int) ;
 int memset (TYPE_2__*,int ,int) ;
 scalar_t__ osi_malloc (int) ;

void BTA_BleEnableAdvInstance (tBTA_BLE_ADV_PARAMS *p_params,
                               tBTA_BLE_MULTI_ADV_CBACK *p_cback,
                               void *p_ref)
{

    tBTA_DM_API_BLE_MULTI_ADV_ENB *p_msg;
    UINT16 len = sizeof(tBTA_BLE_ADV_PARAMS) + sizeof(tBTA_DM_API_BLE_MULTI_ADV_ENB);

    APPL_TRACE_API ("BTA_BleEnableAdvInstance");

    if ((p_msg = (tBTA_DM_API_BLE_MULTI_ADV_ENB *) osi_malloc(len)) != ((void*)0)) {
        memset(p_msg, 0, sizeof(tBTA_DM_API_BLE_MULTI_ADV_ENB));

        p_msg->hdr.event = BTA_DM_API_BLE_MULTI_ADV_ENB_EVT;
        p_msg->p_cback = (void *)p_cback;
        if (p_params != ((void*)0)) {
            p_msg->p_params = (void *)(p_msg + 1);
            memcpy(p_msg->p_params, p_params, sizeof(tBTA_BLE_ADV_PARAMS));
        }
        p_msg->p_ref = p_ref;

        bta_sys_sendmsg(p_msg);
    }
}
