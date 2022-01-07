
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ adv_interval_max; scalar_t__ adv_interval_min; } ;
typedef TYPE_1__ tBTM_BLE_INQ_CB ;
typedef int UINT8 ;
typedef scalar_t__ UINT16 ;






 scalar_t__ BTM_BLE_GAP_ADV_DIR_MAX_INT ;
 scalar_t__ BTM_BLE_GAP_ADV_DIR_MIN_INT ;
 scalar_t__ BTM_BLE_GAP_ADV_FAST_INT_1 ;
 scalar_t__ BTM_BLE_GAP_ADV_FAST_INT_2 ;
 scalar_t__ BTM_BLE_GAP_ADV_SLOW_INT ;


void btm_ble_select_adv_interval(tBTM_BLE_INQ_CB *p_cb, UINT8 evt_type, UINT16 *p_adv_int_min, UINT16 *p_adv_int_max)
{
    if (p_cb->adv_interval_min && p_cb->adv_interval_max) {
        *p_adv_int_min = p_cb->adv_interval_min;
        *p_adv_int_max = p_cb->adv_interval_max;
    } else {
        switch (evt_type) {
        case 131:
        case 130:
            *p_adv_int_min = *p_adv_int_max = BTM_BLE_GAP_ADV_FAST_INT_1;
            break;

        case 128:
        case 129:
            *p_adv_int_min = *p_adv_int_max = BTM_BLE_GAP_ADV_FAST_INT_2;
            break;


        case 132:
            *p_adv_int_min = BTM_BLE_GAP_ADV_DIR_MIN_INT;
            *p_adv_int_max = BTM_BLE_GAP_ADV_DIR_MAX_INT;
            break;

        default:
            *p_adv_int_min = *p_adv_int_max = BTM_BLE_GAP_ADV_SLOW_INT;
            break;
        }
    }
    return;
}
