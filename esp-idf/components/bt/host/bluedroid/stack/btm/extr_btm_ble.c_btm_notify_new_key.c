
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tBTM_BLE_LOCAL_KEYS ;
typedef int UINT8 ;
struct TYPE_4__ {int (* p_le_key_callback ) (int,int *) ;} ;
struct TYPE_5__ {int ble_encryption_key_value; int id_keys; } ;
struct TYPE_6__ {TYPE_1__ api; TYPE_2__ devcb; } ;




 int BTM_TRACE_DEBUG (char*,...) ;
 int BTM_TRACE_ERROR (char*,int) ;
 TYPE_3__ btm_cb ;
 int stub1 (int,int *) ;

__attribute__((used)) static void btm_notify_new_key(UINT8 key_type)
{
    tBTM_BLE_LOCAL_KEYS *p_locak_keys = ((void*)0);

    BTM_TRACE_DEBUG ("btm_notify_new_key key_type=%d", key_type);

    if (btm_cb.api.p_le_key_callback) {
        switch (key_type) {
        case 128:
            BTM_TRACE_DEBUG ("BTM_BLE_KEY_TYPE_ID");
            p_locak_keys = (tBTM_BLE_LOCAL_KEYS *)&btm_cb.devcb.id_keys;
            break;

        case 129:
            BTM_TRACE_DEBUG ("BTM_BLE_KEY_TYPE_ER");
            p_locak_keys = (tBTM_BLE_LOCAL_KEYS *)&btm_cb.devcb.ble_encryption_key_value;
            break;

        default:
            BTM_TRACE_ERROR("unknown key type: %d", key_type);
            break;
        }
        if (p_locak_keys != ((void*)0)) {
            (*btm_cb.api.p_le_key_callback) (key_type, p_locak_keys);
        }
    }
}
