
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tBTM_STATUS ;
struct TYPE_5__ {scalar_t__ scan_duplicate_filter; scalar_t__ scan_type; int state; } ;
typedef TYPE_2__ tBTM_BLE_INQ_CB ;
struct TYPE_4__ {TYPE_2__ inq_var; } ;
struct TYPE_6__ {TYPE_1__ ble_ctr_cb; } ;


 scalar_t__ BTM_BLE_DUPLICATE_DISABLE ;
 scalar_t__ BTM_BLE_DUPLICATE_MAX ;
 int BTM_BLE_SCANNING ;
 int BTM_BLE_SCAN_ENABLE ;
 scalar_t__ BTM_BLE_SCAN_MODE_ACTI ;
 int BTM_BLE_STATE_ACTIVE_SCAN_BIT ;
 int BTM_BLE_STATE_PASSIVE_SCAN_BIT ;
 int BTM_CMD_STARTED ;
 int BTM_NO_RESOURCES ;
 scalar_t__ BTM_SUCCESS ;
 int OSI_MUTEX_MAX_TIMEOUT ;
 int OSI_SEM_MAX_TIMEOUT ;
 int btm_ble_set_topology_mask (int ) ;
 TYPE_3__ btm_cb ;
 int btsnd_hcic_ble_set_scan_enable (int ,scalar_t__) ;
 int osi_mutex_lock (int *,int ) ;
 int osi_mutex_unlock (int *) ;
 int osi_sem_take (int *,int ) ;
 int scan_enable_lock ;
 int scan_enable_sem ;
 scalar_t__ scan_enable_status ;

tBTM_STATUS btm_ble_start_scan(void)
{
    tBTM_BLE_INQ_CB *p_inq = &btm_cb.ble_ctr_cb.inq_var;
    tBTM_STATUS status = BTM_CMD_STARTED;

    osi_mutex_lock(&scan_enable_lock, OSI_MUTEX_MAX_TIMEOUT);

    if(p_inq->scan_duplicate_filter > BTM_BLE_DUPLICATE_MAX) {
        p_inq->scan_duplicate_filter = BTM_BLE_DUPLICATE_DISABLE;
    }

    if (!btsnd_hcic_ble_set_scan_enable (BTM_BLE_SCAN_ENABLE, p_inq->scan_duplicate_filter)) {
        status = BTM_NO_RESOURCES;
    } else {
        osi_sem_take(&scan_enable_sem, OSI_SEM_MAX_TIMEOUT);
        if(scan_enable_status != BTM_SUCCESS) {
            status = BTM_NO_RESOURCES;
        }
        btm_cb.ble_ctr_cb.inq_var.state = BTM_BLE_SCANNING;
        if (p_inq->scan_type == BTM_BLE_SCAN_MODE_ACTI) {
            btm_ble_set_topology_mask(BTM_BLE_STATE_ACTIVE_SCAN_BIT);
        } else {
            btm_ble_set_topology_mask(BTM_BLE_STATE_PASSIVE_SCAN_BIT);
        }
    }
    osi_mutex_unlock(&scan_enable_lock);
    return status;
}
