
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ tBTM_STATUS ;
typedef int tBTM_BLE_WL_STATE ;
typedef int tBTM_BLE_STATE_MASK ;
struct TYPE_5__ {scalar_t__ adv_mode; int state; int fast_adv_on; } ;
typedef TYPE_2__ tBTM_BLE_INQ_CB ;
typedef int tBTM_BLE_GAP_STATE ;
typedef void* UINT8 ;
struct TYPE_4__ {int wl_state; TYPE_2__ inq_var; } ;
struct TYPE_6__ {TYPE_1__ ble_ctr_cb; } ;
typedef int BOOLEAN ;


 scalar_t__ BTM_BLE_ADV_DISABLE ;
 scalar_t__ BTM_BLE_ADV_ENABLE ;
 int BTM_BLE_STATE_ALL_ADV_MASK ;
 int BTM_BLE_STOP_ADV ;
 int BTM_BLE_WL_ADV ;
 scalar_t__ BTM_NO_RESOURCES ;
 scalar_t__ BTM_SUCCESS ;
 int FALSE ;
 scalar_t__ HCI_SUCCESS ;
 int OSI_MUTEX_MAX_TIMEOUT ;
 int OSI_SEM_MAX_TIMEOUT ;
 int adv_enable_lock ;
 int adv_enable_sem ;
 scalar_t__ adv_enable_status ;
 int btm_ble_clear_topology_mask (int ) ;
 int btm_ble_get_topology_mask () ;
 int btm_ble_set_topology_mask (int ) ;
 TYPE_3__ btm_cb ;
 scalar_t__ btsnd_hcic_ble_set_adv_enable (scalar_t__) ;
 int osi_mutex_lock (int *,int ) ;
 int osi_mutex_unlock (int *) ;
 int osi_sem_take (int *,int ) ;

tBTM_STATUS btm_ble_stop_adv(void)
{
    tBTM_BLE_INQ_CB *p_cb = &btm_cb.ble_ctr_cb.inq_var;
    tBTM_STATUS rt = BTM_SUCCESS;
    if (p_cb->adv_mode == BTM_BLE_ADV_ENABLE) {
        osi_mutex_lock(&adv_enable_lock, OSI_MUTEX_MAX_TIMEOUT);
        UINT8 temp_adv_mode = p_cb->adv_mode;
        BOOLEAN temp_fast_adv_on = p_cb->fast_adv_on;
        tBTM_BLE_GAP_STATE temp_state = p_cb->state;
        tBTM_BLE_WL_STATE temp_wl_state = btm_cb.ble_ctr_cb.wl_state;
        tBTM_BLE_STATE_MASK temp_mask = btm_ble_get_topology_mask ();

        p_cb->fast_adv_on = FALSE;
        p_cb->adv_mode = BTM_BLE_ADV_DISABLE;
        p_cb->state = BTM_BLE_STOP_ADV;
        btm_cb.ble_ctr_cb.wl_state &= ~BTM_BLE_WL_ADV;


        btm_ble_clear_topology_mask (BTM_BLE_STATE_ALL_ADV_MASK);

        if (btsnd_hcic_ble_set_adv_enable (BTM_BLE_ADV_DISABLE)) {
            osi_sem_take(&adv_enable_sem, OSI_SEM_MAX_TIMEOUT);
            rt = adv_enable_status;
        } else {

            p_cb->fast_adv_on = temp_fast_adv_on;
            p_cb->adv_mode = temp_adv_mode;
            p_cb->state = temp_state;
            btm_cb.ble_ctr_cb.wl_state = temp_wl_state;
            btm_ble_set_topology_mask (temp_mask);

            rt = BTM_NO_RESOURCES;
        }
        if(adv_enable_status != HCI_SUCCESS) {
            p_cb->adv_mode = temp_adv_mode;
        }
        osi_mutex_unlock(&adv_enable_lock);
    }
    return rt;
}
