
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_8__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int own_addr_type; } ;
typedef TYPE_2__ tBTM_LE_RANDOM_CB ;
struct TYPE_11__ {scalar_t__ adv_mode; int afp; int adv_chnl_map; int evt_type; } ;
typedef TYPE_3__ tBTM_BLE_INQ_CB ;
typedef int tBLE_ADDR_TYPE ;
struct TYPE_9__ {TYPE_2__ addr_mgnt_cb; TYPE_3__ inq_var; } ;
struct TYPE_13__ {TYPE_1__ ble_ctr_cb; } ;
struct TYPE_12__ {int member_0; } ;
typedef TYPE_4__ BD_ADDR ;


 int BLE_ADDR_PUBLIC ;
 scalar_t__ BTM_BLE_ADV_ENABLE ;
 int BTM_BLE_GAP_ADV_SLOW_INT ;
 int btm_ble_start_adv () ;
 int btm_ble_stop_adv () ;
 TYPE_8__ btm_cb ;
 int btm_set_conn_mode_adv_init_addr (TYPE_3__*,TYPE_4__,int *,int *) ;
 int btsnd_hcic_ble_write_adv_params (int ,int ,int ,int ,int ,TYPE_4__,int ,int ) ;

__attribute__((used)) static void btm_ble_start_slow_adv (void)
{
    tBTM_BLE_INQ_CB *p_cb = &btm_cb.ble_ctr_cb.inq_var;

    if (p_cb->adv_mode == BTM_BLE_ADV_ENABLE) {
        tBTM_LE_RANDOM_CB *p_addr_cb = &btm_cb.ble_ctr_cb.addr_mgnt_cb;
        BD_ADDR p_addr_ptr = {0};
        tBLE_ADDR_TYPE init_addr_type = BLE_ADDR_PUBLIC;
        tBLE_ADDR_TYPE own_addr_type = p_addr_cb->own_addr_type;

        btm_ble_stop_adv();

        p_cb->evt_type = btm_set_conn_mode_adv_init_addr(p_cb, p_addr_ptr, &init_addr_type,
                         &own_addr_type);


        btsnd_hcic_ble_write_adv_params (BTM_BLE_GAP_ADV_SLOW_INT, BTM_BLE_GAP_ADV_SLOW_INT,
                                         p_cb->evt_type, own_addr_type,
                                         init_addr_type, p_addr_ptr,
                                         p_cb->adv_chnl_map, p_cb->afp);

        btm_ble_start_adv();
    }
}
