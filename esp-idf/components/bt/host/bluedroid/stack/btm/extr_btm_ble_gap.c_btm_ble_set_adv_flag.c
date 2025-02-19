
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int* p_flags; } ;
typedef TYPE_3__ tBTM_BLE_LOCAL_ADV_DATA ;
typedef int UINT8 ;
typedef int UINT16 ;
struct TYPE_5__ {TYPE_3__ adv_data; } ;
struct TYPE_6__ {TYPE_1__ inq_var; } ;
struct TYPE_8__ {TYPE_2__ ble_ctr_cb; } ;


 int BTM_BLE_GENERAL_DISCOVERABLE ;
 int BTM_BLE_GEN_DISC_FLAG ;
 int BTM_BLE_LIMITED_DISCOVERABLE ;
 int BTM_BLE_LIMIT_DISC_FLAG ;
 int BTM_TRACE_DEBUG (char*,int) ;
 int BTM_TRACE_ERROR (char*,int,int) ;
 int btm_ble_update_adv_flag (int) ;
 int btm_ble_update_dmt_flag_bits (int*,int,int) ;
 TYPE_4__ btm_cb ;

void btm_ble_set_adv_flag(UINT16 connect_mode, UINT16 disc_mode)
{
    UINT8 flag = 0, old_flag = 0;
    tBTM_BLE_LOCAL_ADV_DATA *p_adv_data = &btm_cb.ble_ctr_cb.inq_var.adv_data;

    if (p_adv_data->p_flags != ((void*)0)) {
        flag = old_flag = *(p_adv_data->p_flags);
    }

    btm_ble_update_dmt_flag_bits (&flag, connect_mode, disc_mode);

    BTM_TRACE_DEBUG("disc_mode %04x", disc_mode);

    if (disc_mode & BTM_BLE_LIMITED_DISCOVERABLE) {
        flag &= ~BTM_BLE_GEN_DISC_FLAG;
        flag |= BTM_BLE_LIMIT_DISC_FLAG;
    } else if (disc_mode & BTM_BLE_GENERAL_DISCOVERABLE) {
        flag |= BTM_BLE_GEN_DISC_FLAG;
        flag &= ~BTM_BLE_LIMIT_DISC_FLAG;
    } else {
        flag &= ~(BTM_BLE_LIMIT_DISC_FLAG | BTM_BLE_GEN_DISC_FLAG);
    }

    if (flag != old_flag) {
        BTM_TRACE_ERROR("flag = 0x%x,old_flag = 0x%x", flag, old_flag);
        btm_ble_update_adv_flag(flag);
    }
}
