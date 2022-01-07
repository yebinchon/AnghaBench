
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int event; } ;
struct TYPE_6__ {int inst_id; TYPE_1__ hdr; } ;
typedef TYPE_2__ tBTA_DM_API_BLE_MULTI_ADV_DISABLE ;
typedef int UINT8 ;


 int APPL_TRACE_API (char*,int ) ;
 int BTA_DM_API_BLE_MULTI_ADV_DISABLE_EVT ;
 int bta_sys_sendmsg (TYPE_2__*) ;
 int memset (TYPE_2__*,int ,int) ;
 scalar_t__ osi_malloc (int) ;

void BTA_BleDisableAdvInstance (UINT8 inst_id)
{
    tBTA_DM_API_BLE_MULTI_ADV_DISABLE *p_msg;

    APPL_TRACE_API ("BTA_BleDisableAdvInstance: %d", inst_id);
    if ((p_msg = (tBTA_DM_API_BLE_MULTI_ADV_DISABLE *)
                 osi_malloc(sizeof(tBTA_DM_API_BLE_MULTI_ADV_DISABLE))) != ((void*)0)) {
        memset(p_msg, 0, sizeof(tBTA_DM_API_BLE_MULTI_ADV_DISABLE));
        p_msg->hdr.event = BTA_DM_API_BLE_MULTI_ADV_DISABLE_EVT;
        p_msg->inst_id = inst_id;
        bta_sys_sendmsg(p_msg);
    }
}
