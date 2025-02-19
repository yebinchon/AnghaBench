
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_8__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ adv_mode; scalar_t__ afp; int connectable_mode; int adv_chnl_map; int adv_addr_type; int evt_type; scalar_t__ adv_interval_max; scalar_t__ adv_interval_min; } ;
typedef TYPE_2__ tBTM_BLE_INQ_CB ;
typedef scalar_t__ tBTM_BLE_AFP ;
typedef int tBLE_ADDR_TYPE ;
typedef scalar_t__ UINT8 ;
typedef int UINT16 ;
struct TYPE_9__ {TYPE_2__ inq_var; } ;
struct TYPE_13__ {TYPE_1__ ble_ctr_cb; } ;
struct TYPE_12__ {int (* supports_ble ) () ;} ;
struct TYPE_11__ {int member_0; } ;
typedef TYPE_3__ BD_ADDR ;


 int BLE_ADDR_PUBLIC ;
 scalar_t__ BTM_BLE_ADV_ENABLE ;
 int BTM_BLE_CONNECTABLE ;
 scalar_t__ BTM_BLE_GAP_ADV_SLOW_INT ;
 int BTM_TRACE_EVENT (char*) ;
 int btm_ble_start_adv () ;
 int btm_ble_stop_adv () ;
 TYPE_8__ btm_cb ;
 int btm_set_conn_mode_adv_init_addr (TYPE_2__*,TYPE_3__,int *,int *) ;
 int btsnd_hcic_ble_write_adv_params (int ,int ,int ,int ,int ,TYPE_3__,int ,scalar_t__) ;
 TYPE_4__* controller_get_interface () ;
 int stub1 () ;

void BTM_BleUpdateAdvFilterPolicy(tBTM_BLE_AFP adv_policy)
{
    tBTM_BLE_INQ_CB *p_cb = &btm_cb.ble_ctr_cb.inq_var;
    tBLE_ADDR_TYPE init_addr_type = BLE_ADDR_PUBLIC;
    BD_ADDR p_addr_ptr = {0};
    UINT8 adv_mode = p_cb->adv_mode;

    BTM_TRACE_EVENT ("BTM_BleUpdateAdvFilterPolicy\n");

    if (!controller_get_interface()->supports_ble()) {
        return;
    }

    if (p_cb->afp != adv_policy) {
        p_cb->afp = adv_policy;


        btm_ble_stop_adv ();

        if (p_cb->connectable_mode & BTM_BLE_CONNECTABLE) {
            p_cb->evt_type = btm_set_conn_mode_adv_init_addr(p_cb, p_addr_ptr, &init_addr_type,
                             &p_cb->adv_addr_type);
        }

        btsnd_hcic_ble_write_adv_params ((UINT16)(p_cb->adv_interval_min ? p_cb->adv_interval_min :
                                         BTM_BLE_GAP_ADV_SLOW_INT),
                                         (UINT16)(p_cb->adv_interval_max ? p_cb->adv_interval_max :
                                                 BTM_BLE_GAP_ADV_SLOW_INT),
                                         p_cb->evt_type,
                                         p_cb->adv_addr_type,
                                         init_addr_type,
                                         p_addr_ptr,
                                         p_cb->adv_chnl_map,
                                         p_cb->afp);

        if (adv_mode == BTM_BLE_ADV_ENABLE) {
            btm_ble_start_adv ();
        }

    }
}
