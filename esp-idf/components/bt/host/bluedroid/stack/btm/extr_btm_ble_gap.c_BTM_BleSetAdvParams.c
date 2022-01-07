
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_9__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int tBTM_STATUS ;
struct TYPE_11__ {int own_addr_type; } ;
typedef TYPE_2__ tBTM_LE_RANDOM_CB ;
struct TYPE_12__ {scalar_t__ adv_mode; int afp; int adv_chnl_map; int evt_type; void* adv_interval_max; void* adv_interval_min; int direct_bda; } ;
typedef TYPE_3__ tBTM_BLE_INQ_CB ;
typedef int tBTM_BLE_ADV_CHNL_MAP ;
typedef int tBLE_BD_ADDR ;
typedef int tBLE_ADDR_TYPE ;
typedef scalar_t__ UINT8 ;
typedef void* UINT16 ;
struct TYPE_10__ {TYPE_3__ inq_var; TYPE_2__ addr_mgnt_cb; } ;
struct TYPE_15__ {TYPE_1__ ble_ctr_cb; } ;
struct TYPE_14__ {int (* supports_ble ) () ;} ;
struct TYPE_13__ {int member_0; } ;
typedef TYPE_4__ BD_ADDR ;


 int BLE_ADDR_PUBLIC ;
 scalar_t__ BTM_BLE_ADV_ENABLE ;
 int BTM_BLE_ADV_INT_MAX ;
 int BTM_BLE_ADV_INT_MIN ;
 int BTM_BLE_ISVALID_PARAM (void*,int ,int ) ;
 int BTM_ILLEGAL_VALUE ;
 int BTM_SUCCESS ;
 int BTM_TRACE_EVENT (char*) ;
 int btm_ble_start_adv () ;
 int btm_ble_stop_adv () ;
 TYPE_9__ btm_cb ;
 int btm_set_conn_mode_adv_init_addr (TYPE_3__*,TYPE_4__,int *,int *) ;
 int btsnd_hcic_ble_write_adv_params (void*,void*,int ,int ,int ,TYPE_4__,int ,int ) ;
 TYPE_5__* controller_get_interface () ;
 int memcpy (int *,int *,int) ;
 int stub1 () ;

tBTM_STATUS BTM_BleSetAdvParams(UINT16 adv_int_min, UINT16 adv_int_max,
                                tBLE_BD_ADDR *p_dir_bda,
                                tBTM_BLE_ADV_CHNL_MAP chnl_map)
{
    tBTM_LE_RANDOM_CB *p_addr_cb = &btm_cb.ble_ctr_cb.addr_mgnt_cb;
    tBTM_BLE_INQ_CB *p_cb = &btm_cb.ble_ctr_cb.inq_var;
    tBTM_STATUS status = BTM_SUCCESS;
    BD_ADDR p_addr_ptr = {0};
    tBLE_ADDR_TYPE init_addr_type = BLE_ADDR_PUBLIC;
    tBLE_ADDR_TYPE own_addr_type = p_addr_cb->own_addr_type;
    UINT8 adv_mode = p_cb->adv_mode;

    BTM_TRACE_EVENT ("BTM_BleSetAdvParams");

    if (!controller_get_interface()->supports_ble()) {
        return BTM_ILLEGAL_VALUE;
    }

    if (!BTM_BLE_ISVALID_PARAM(adv_int_min, BTM_BLE_ADV_INT_MIN, BTM_BLE_ADV_INT_MAX) ||
            !BTM_BLE_ISVALID_PARAM(adv_int_max, BTM_BLE_ADV_INT_MIN, BTM_BLE_ADV_INT_MAX)) {
        return BTM_ILLEGAL_VALUE;
    }

    p_cb->adv_interval_min = adv_int_min;
    p_cb->adv_interval_max = adv_int_max;
    p_cb->adv_chnl_map = chnl_map;

    if (p_dir_bda) {
        memcpy(&p_cb->direct_bda, p_dir_bda, sizeof(tBLE_BD_ADDR));
    }

    BTM_TRACE_EVENT ("update params for an active adv\n");

    btm_ble_stop_adv();

    p_cb->evt_type = btm_set_conn_mode_adv_init_addr(p_cb, p_addr_ptr, &init_addr_type,
                     &own_addr_type);


    btsnd_hcic_ble_write_adv_params (p_cb->adv_interval_min,
                                     p_cb->adv_interval_max,
                                     p_cb->evt_type,
                                     own_addr_type,
                                     init_addr_type,
                                     p_addr_ptr,
                                     p_cb->adv_chnl_map,
                                     p_cb->afp);

    if (adv_mode == BTM_BLE_ADV_ENABLE) {
        btm_ble_start_adv();
    }

    return status;
}
