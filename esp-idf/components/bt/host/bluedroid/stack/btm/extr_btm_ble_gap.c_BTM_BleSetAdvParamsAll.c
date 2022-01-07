
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int tBTM_STATUS ;
typedef int (* tBTM_START_ADV_CMPL_CBACK ) (int ) ;
struct TYPE_11__ {int exist_addr_bit; scalar_t__ own_addr_type; TYPE_4__* static_rand_addr; int * private_addr; TYPE_4__* resolvale_addr; } ;
typedef TYPE_2__ tBTM_LE_RANDOM_CB ;
struct TYPE_12__ {int afp; int direct_bda; int (* p_adv_cb ) (int ) ;scalar_t__ evt_type; int adv_chnl_map; void* adv_interval_max; void* adv_interval_min; } ;
typedef TYPE_3__ tBTM_BLE_INQ_CB ;
typedef int tBTM_BLE_AFP ;
typedef int tBTM_BLE_ADV_CHNL_MAP ;
struct TYPE_13__ {int bda; int type; } ;
typedef TYPE_4__ tBLE_BD_ADDR ;
typedef scalar_t__ tBLE_ADDR_TYPE ;
typedef scalar_t__ UINT8 ;
typedef void* UINT16 ;
struct TYPE_10__ {scalar_t__ privacy_mode; TYPE_2__ addr_mgnt_cb; TYPE_3__ inq_var; } ;
struct TYPE_15__ {TYPE_1__ ble_ctr_cb; } ;
struct TYPE_14__ {int (* supports_ble ) () ;} ;


 int BD_ADDR_LEN ;
 scalar_t__ BLE_ADDR_PUBLIC ;
 scalar_t__ BLE_ADDR_PUBLIC_ID ;
 scalar_t__ BLE_ADDR_RANDOM ;
 scalar_t__ BLE_ADDR_RANDOM_ID ;
 int BTM_BLE_ADV_INT_MAX ;
 int BTM_BLE_ADV_INT_MIN ;
 scalar_t__ BTM_BLE_CONNECT_DIR_EVT ;
 scalar_t__ BTM_BLE_CONNECT_LO_DUTY_DIR_EVT ;
 int BTM_BLE_GAP_ADDR_BIT_RANDOM ;
 int BTM_BLE_GAP_ADDR_BIT_RESOLVABLE ;
 int BTM_BLE_ISVALID_PARAM (void*,int ,int ) ;
 scalar_t__ BTM_BLE_NON_CONNECT_EVT ;
 int BTM_BLE_STATE_HI_DUTY_DIR_ADV_BIT ;
 int BTM_BLE_STATE_LO_DUTY_DIR_ADV_BIT ;
 int BTM_BLE_STATE_NON_CONN_ADV_BIT ;
 int BTM_BleConfigPrivacy (int ,int *) ;
 int BTM_ILLEGAL_VALUE ;
 int BTM_NO_RESOURCES ;
 scalar_t__ BTM_PRIVACY_NONE ;
 int BTM_SUCCESS ;
 int BTM_TRACE_ERROR (char*) ;
 int BTM_TRACE_EVENT (char*) ;
 int FALSE ;
 int HCI_ERR_ESP_VENDOR_FAIL ;
 int OSI_MUTEX_MAX_TIMEOUT ;
 int OSI_SEM_MAX_TIMEOUT ;
 int adv_param_lock ;
 int adv_param_sem ;
 int adv_param_status ;
 int btm_ble_set_topology_mask (int ) ;
 int btm_ble_stop_adv () ;
 TYPE_8__ btm_cb ;
 int btsnd_hcic_ble_set_random_addr (TYPE_4__*) ;
 scalar_t__ btsnd_hcic_ble_write_adv_params (void*,void*,scalar_t__,scalar_t__,int ,int ,int ,int ) ;
 TYPE_6__* controller_get_interface () ;
 int memcpy (int *,TYPE_4__*,int) ;
 int osi_mutex_lock (int *,int ) ;
 int osi_mutex_unlock (int *) ;
 int osi_sem_take (int *,int ) ;
 int stub1 () ;
 int stub2 (int ) ;
 int stub3 (int ) ;
 int stub4 (int ) ;
 int stub5 (int ) ;

tBTM_STATUS BTM_BleSetAdvParamsAll(UINT16 adv_int_min, UINT16 adv_int_max, UINT8 adv_type,
                                        tBLE_ADDR_TYPE own_bda_type, tBLE_BD_ADDR *p_dir_bda,
                                        tBTM_BLE_ADV_CHNL_MAP chnl_map, tBTM_BLE_AFP afp, tBTM_START_ADV_CMPL_CBACK *adv_cb)
{
    tBTM_LE_RANDOM_CB *p_addr_cb = &btm_cb.ble_ctr_cb.addr_mgnt_cb;
    tBTM_BLE_INQ_CB *p_cb = &btm_cb.ble_ctr_cb.inq_var;

    BTM_TRACE_EVENT ("BTM_BleSetAdvParamsAll\n");

    if (!controller_get_interface()->supports_ble()) {
        return BTM_ILLEGAL_VALUE;
    }

    if(own_bda_type == BLE_ADDR_RANDOM) {
        if((btm_cb.ble_ctr_cb.addr_mgnt_cb.exist_addr_bit & BTM_BLE_GAP_ADDR_BIT_RANDOM) == BTM_BLE_GAP_ADDR_BIT_RANDOM) {


            if (btm_cb.ble_ctr_cb.privacy_mode != BTM_PRIVACY_NONE) {
                BTM_BleConfigPrivacy(FALSE, ((void*)0));
            }

            btm_cb.ble_ctr_cb.addr_mgnt_cb.own_addr_type = BLE_ADDR_RANDOM;
            memcpy(btm_cb.ble_ctr_cb.addr_mgnt_cb.private_addr, btm_cb.ble_ctr_cb.addr_mgnt_cb.static_rand_addr, BD_ADDR_LEN);

            btsnd_hcic_ble_set_random_addr(btm_cb.ble_ctr_cb.addr_mgnt_cb.static_rand_addr);

        } else if((btm_cb.ble_ctr_cb.addr_mgnt_cb.exist_addr_bit & BTM_BLE_GAP_ADDR_BIT_RESOLVABLE) == BTM_BLE_GAP_ADDR_BIT_RESOLVABLE) {
            btm_cb.ble_ctr_cb.addr_mgnt_cb.own_addr_type = BLE_ADDR_RANDOM;
            memcpy(btm_cb.ble_ctr_cb.addr_mgnt_cb.private_addr, btm_cb.ble_ctr_cb.addr_mgnt_cb.resolvale_addr, BD_ADDR_LEN);
            btsnd_hcic_ble_set_random_addr(btm_cb.ble_ctr_cb.addr_mgnt_cb.resolvale_addr);
        }else {
            BTM_TRACE_ERROR ("No random address yet, please set random address and try\n");
            if(adv_cb) {
                (* adv_cb)(HCI_ERR_ESP_VENDOR_FAIL);
            }
            return BTM_ILLEGAL_VALUE;
        }
    } else if(own_bda_type == BLE_ADDR_PUBLIC_ID || own_bda_type == BLE_ADDR_RANDOM_ID) {
        if((btm_cb.ble_ctr_cb.addr_mgnt_cb.exist_addr_bit & BTM_BLE_GAP_ADDR_BIT_RESOLVABLE) == BTM_BLE_GAP_ADDR_BIT_RESOLVABLE) {
            own_bda_type = BLE_ADDR_RANDOM;
            btm_cb.ble_ctr_cb.addr_mgnt_cb.own_addr_type = BLE_ADDR_RANDOM;
            memcpy(btm_cb.ble_ctr_cb.addr_mgnt_cb.private_addr, btm_cb.ble_ctr_cb.addr_mgnt_cb.resolvale_addr, BD_ADDR_LEN);
            btsnd_hcic_ble_set_random_addr(btm_cb.ble_ctr_cb.addr_mgnt_cb.resolvale_addr);
        } else {

            if(btm_cb.ble_ctr_cb.privacy_mode != BTM_PRIVACY_NONE) {
                BTM_TRACE_ERROR ("Error state\n");
                if(adv_cb) {
                    (* adv_cb)(HCI_ERR_ESP_VENDOR_FAIL);
                }
                return BTM_ILLEGAL_VALUE;
            }

            if(own_bda_type == BLE_ADDR_PUBLIC_ID) {
                own_bda_type = BLE_ADDR_PUBLIC;
                btm_cb.ble_ctr_cb.addr_mgnt_cb.own_addr_type = BLE_ADDR_PUBLIC;
            } else {
                if((btm_cb.ble_ctr_cb.addr_mgnt_cb.exist_addr_bit & BTM_BLE_GAP_ADDR_BIT_RANDOM) == BTM_BLE_GAP_ADDR_BIT_RANDOM) {
                    own_bda_type = BLE_ADDR_RANDOM;
                    btm_cb.ble_ctr_cb.addr_mgnt_cb.own_addr_type = BLE_ADDR_RANDOM;
                    memcpy(btm_cb.ble_ctr_cb.addr_mgnt_cb.private_addr, btm_cb.ble_ctr_cb.addr_mgnt_cb.static_rand_addr, BD_ADDR_LEN);
                    btsnd_hcic_ble_set_random_addr(btm_cb.ble_ctr_cb.addr_mgnt_cb.static_rand_addr);
                } else {
                    BTM_TRACE_ERROR ("No RPA and no random address yet, please set RPA or random address and try\n");
                    if(adv_cb) {
                        (* adv_cb)(HCI_ERR_ESP_VENDOR_FAIL);
                    }
                    return BTM_ILLEGAL_VALUE;
                }
            }
        }
    } else {
        btm_cb.ble_ctr_cb.addr_mgnt_cb.own_addr_type = BLE_ADDR_PUBLIC;
    }

    if (!BTM_BLE_ISVALID_PARAM(adv_int_min, BTM_BLE_ADV_INT_MIN, BTM_BLE_ADV_INT_MAX) ||
            !BTM_BLE_ISVALID_PARAM(adv_int_max, BTM_BLE_ADV_INT_MIN, BTM_BLE_ADV_INT_MAX)) {
         BTM_TRACE_ERROR ("adv_int_min or adv_int_max is invalid\n");
        if(adv_cb) {
            (* adv_cb)(HCI_ERR_ESP_VENDOR_FAIL);
        }
        return BTM_ILLEGAL_VALUE;
    }

    btm_ble_stop_adv();

    osi_mutex_lock(&adv_param_lock, OSI_MUTEX_MAX_TIMEOUT);
    if(adv_type == BTM_BLE_CONNECT_DIR_EVT){
        btm_ble_set_topology_mask(BTM_BLE_STATE_HI_DUTY_DIR_ADV_BIT);
    }else if(adv_type == BTM_BLE_CONNECT_LO_DUTY_DIR_EVT){
        btm_ble_set_topology_mask(BTM_BLE_STATE_LO_DUTY_DIR_ADV_BIT);
    }else if(adv_type == BTM_BLE_NON_CONNECT_EVT){
        btm_ble_set_topology_mask(BTM_BLE_STATE_NON_CONN_ADV_BIT);
    }

    p_cb->adv_interval_min = adv_int_min;
    p_cb->adv_interval_max = adv_int_max;
    p_cb->adv_chnl_map = chnl_map;
    p_addr_cb->own_addr_type = own_bda_type;
    p_cb->evt_type = adv_type;
    p_cb->afp = afp;
    p_cb->p_adv_cb = adv_cb;

    if (p_dir_bda) {
        memcpy(&p_cb->direct_bda, p_dir_bda, sizeof(tBLE_BD_ADDR));
    }

    BTM_TRACE_EVENT ("update params for an active adv\n");

    tBTM_STATUS status = BTM_SUCCESS;

    if (btsnd_hcic_ble_write_adv_params (adv_int_min,
                                        adv_int_max,
                                        adv_type,
                                        own_bda_type,
                                        p_dir_bda->type,
                                        p_dir_bda->bda,
                                        chnl_map,
                                        p_cb->afp)) {
        osi_sem_take(&adv_param_sem, OSI_SEM_MAX_TIMEOUT);
        status = adv_param_status;
    } else {
        status = BTM_NO_RESOURCES;
    }
    osi_mutex_unlock(&adv_param_lock);
    return status;
}
