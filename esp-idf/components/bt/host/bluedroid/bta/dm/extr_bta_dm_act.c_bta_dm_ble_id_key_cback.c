
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tBTM_BLE_LOCAL_KEYS ;
struct TYPE_4__ {int ble_id_keys; } ;
typedef TYPE_1__ tBTA_DM_SEC ;
typedef int UINT8 ;
struct TYPE_5__ {int (* p_sec_cback ) (int,TYPE_1__*) ;} ;


 int APPL_TRACE_DEBUG (char*,int) ;
 int BTA_DM_BLE_LOCAL_ER_EVT ;
 int BTA_DM_BLE_LOCAL_IR_EVT ;


 TYPE_3__ bta_dm_cb ;
 int memcpy (int *,int *,int) ;
 int stub1 (int,TYPE_1__*) ;

__attribute__((used)) static void bta_dm_ble_id_key_cback (UINT8 key_type, tBTM_BLE_LOCAL_KEYS *p_key)
{
    UINT8 evt;
    tBTA_DM_SEC dm_key;

    switch (key_type) {
    case 128:
    case 129:
        if (bta_dm_cb.p_sec_cback) {
            memcpy(&dm_key.ble_id_keys, p_key, sizeof(tBTM_BLE_LOCAL_KEYS));

            evt = (key_type == 128) ? BTA_DM_BLE_LOCAL_IR_EVT : BTA_DM_BLE_LOCAL_ER_EVT;

            bta_dm_cb.p_sec_cback(evt, &dm_key);
        }
        break;

    default:
        APPL_TRACE_DEBUG("Unknown key type %d", key_type);
        break;
    }
    return;

}
