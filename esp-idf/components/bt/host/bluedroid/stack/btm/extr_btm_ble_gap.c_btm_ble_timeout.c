
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int tBTM_BLE_MULTI_ADV_INST ;
struct TYPE_8__ {int own_addr_type; } ;
struct TYPE_9__ {TYPE_2__ addr_mgnt_cb; } ;
struct TYPE_7__ {int discoverable_mode; int connectable_mode; } ;
struct TYPE_11__ {TYPE_3__ ble_ctr_cb; TYPE_1__ btm_inq_vars; } ;
struct TYPE_10__ {int event; scalar_t__ param; } ;
typedef TYPE_4__ TIMER_LIST_ENT ;


 int BLE_ADDR_RANDOM ;
 int BTM_BLE_LIMITED_DISCOVERABLE ;
 int BTM_BleMaxMultiAdvInstanceCount () ;
 int BTM_TRACE_EVENT (char*) ;






 int btm_ble_multi_adv_configure_rpa (int *) ;
 int btm_ble_set_adv_flag (int ,int ) ;
 int btm_ble_start_slow_adv () ;
 int btm_ble_stop_discover () ;
 int btm_ble_stop_inquiry () ;
 int btm_ble_stop_observe () ;
 TYPE_5__ btm_cb ;
 int btm_gen_resolvable_private_addr (void*) ;
 scalar_t__ btm_gen_resolve_paddr_low ;

void btm_ble_timeout(TIMER_LIST_ENT *p_tle)
{
    BTM_TRACE_EVENT ("btm_ble_timeout");

    switch (p_tle->event) {
    case 130:
        btm_ble_stop_observe();
        break;
    case 128:
        btm_ble_stop_discover();
        break;
    case 131:
        btm_ble_stop_inquiry();
        break;

    case 132:

        btm_cb.btm_inq_vars.discoverable_mode &= ~BTM_BLE_LIMITED_DISCOVERABLE;
        btm_ble_set_adv_flag(btm_cb.btm_inq_vars.connectable_mode, btm_cb.btm_inq_vars.discoverable_mode);
        break;

    case 129:
        if (btm_cb.ble_ctr_cb.addr_mgnt_cb.own_addr_type == BLE_ADDR_RANDOM) {
            if (((void*)0) == (void *)(p_tle->param)) {

                btm_gen_resolvable_private_addr((void *)btm_gen_resolve_paddr_low);
            } else {
                if (BTM_BleMaxMultiAdvInstanceCount() > 0) {
                    btm_ble_multi_adv_configure_rpa((tBTM_BLE_MULTI_ADV_INST *)p_tle->param);
                }
            }
        }
        break;

    case 133:

        btm_ble_start_slow_adv();
        break;

    default:
        break;

    }
}
