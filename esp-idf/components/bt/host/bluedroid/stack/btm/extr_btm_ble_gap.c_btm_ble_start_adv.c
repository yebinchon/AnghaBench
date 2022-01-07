
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ tBTM_STATUS ;
struct TYPE_5__ {scalar_t__ evt_type; scalar_t__ afp; void* adv_mode; int state; } ;
typedef TYPE_2__ tBTM_BLE_INQ_CB ;
typedef int tBTM_BLE_GAP_STATE ;
typedef void* UINT8 ;
struct TYPE_4__ {int wl_state; TYPE_2__ inq_var; } ;
struct TYPE_6__ {TYPE_1__ ble_ctr_cb; } ;


 scalar_t__ AP_SCAN_CONN_ALL ;
 int BTM_BLE_ADVERTISING ;
 void* BTM_BLE_ADV_DISABLE ;
 void* BTM_BLE_ADV_ENABLE ;
 scalar_t__ BTM_BLE_CONNECT_DIR_EVT ;
 scalar_t__ BTM_BLE_CONNECT_LO_DUTY_DIR_EVT ;
 int BTM_BLE_RL_ADV ;
 int BTM_BLE_WL_ADV ;
 scalar_t__ BTM_NO_RESOURCES ;
 int BTM_TRACE_EVENT (char*) ;
 scalar_t__ BTM_WRONG_MODE ;
 scalar_t__ HCI_SUCCESS ;
 int OSI_MUTEX_MAX_TIMEOUT ;
 int OSI_SEM_MAX_TIMEOUT ;
 int adv_enable_lock ;
 int adv_enable_sem ;
 scalar_t__ adv_enable_status ;
 int btm_ble_adv_states_operation (int ,scalar_t__) ;
 int btm_ble_clear_topology_mask ;
 int btm_ble_enable_resolving_list_for_platform (int ) ;
 int btm_ble_set_topology_mask ;
 int btm_ble_topology_check ;
 TYPE_3__ btm_cb ;
 int btm_execute_wl_dev_operation () ;
 scalar_t__ btsnd_hcic_ble_set_adv_enable (void*) ;
 int osi_mutex_lock (int *,int ) ;
 int osi_mutex_unlock (int *) ;
 int osi_sem_take (int *,int ) ;

tBTM_STATUS btm_ble_start_adv(void)
{
    tBTM_BLE_INQ_CB *p_cb = &btm_cb.ble_ctr_cb.inq_var;
    tBTM_STATUS rt = BTM_NO_RESOURCES;
    BTM_TRACE_EVENT ("btm_ble_start_adv\n");


    if (!btm_ble_adv_states_operation (btm_ble_topology_check, p_cb->evt_type)) {
        return BTM_WRONG_MODE;
    }

    osi_mutex_lock(&adv_enable_lock, OSI_MUTEX_MAX_TIMEOUT);
    if (p_cb->afp != AP_SCAN_CONN_ALL) {

        btm_execute_wl_dev_operation();
        btm_cb.ble_ctr_cb.wl_state |= BTM_BLE_WL_ADV;
    }


    tBTM_BLE_GAP_STATE temp_state = p_cb->state;
    UINT8 adv_mode = p_cb->adv_mode;
    p_cb->adv_mode = BTM_BLE_ADV_ENABLE;
    p_cb->state = BTM_BLE_ADVERTISING;
    btm_ble_adv_states_operation(btm_ble_set_topology_mask, p_cb->evt_type);
    if (btsnd_hcic_ble_set_adv_enable (BTM_BLE_ADV_ENABLE)) {
        osi_sem_take(&adv_enable_sem, OSI_SEM_MAX_TIMEOUT);
        rt = adv_enable_status;
        BTM_TRACE_EVENT ("BTM_SUCCESS\n");
    } else {
        p_cb->adv_mode = BTM_BLE_ADV_DISABLE;
        p_cb->state = temp_state;
        p_cb->adv_mode = adv_mode;
        btm_ble_adv_states_operation(btm_ble_clear_topology_mask, p_cb->evt_type);
        btm_cb.ble_ctr_cb.wl_state &= ~BTM_BLE_WL_ADV;
    }

    if(adv_enable_status != HCI_SUCCESS) {
        p_cb->adv_mode = adv_mode;
    }
    osi_mutex_unlock(&adv_enable_lock);
    return rt;
}
