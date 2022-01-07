
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * resolve_q_action; int * resolve_q_random_pseudo; } ;
typedef TYPE_2__ tBTM_BLE_RESOLVE_Q ;
struct TYPE_5__ {int * irk_list_mask; TYPE_2__ resolving_list_pend_q; } ;
struct TYPE_8__ {TYPE_1__ ble_ctr_cb; } ;
struct TYPE_7__ {int (* set_ble_resolving_list_max_size ) (int ) ;} ;


 TYPE_4__ btm_cb ;
 TYPE_3__* controller_get_interface () ;
 int osi_free (int *) ;
 int stub1 (int ) ;

void btm_ble_resolving_list_cleanup(void)
{
    tBTM_BLE_RESOLVE_Q *p_q = &btm_cb.ble_ctr_cb.resolving_list_pend_q;

    if (p_q->resolve_q_random_pseudo) {
        osi_free(p_q->resolve_q_random_pseudo);
        p_q->resolve_q_random_pseudo = ((void*)0);
    }

    if (p_q->resolve_q_action) {
        osi_free(p_q->resolve_q_action);
        p_q->resolve_q_action = ((void*)0);
    }

    controller_get_interface()->set_ble_resolving_list_max_size(0);
    if (btm_cb.ble_ctr_cb.irk_list_mask) {
        osi_free(btm_cb.ble_ctr_cb.irk_list_mask);
        btm_cb.ble_ctr_cb.irk_list_mask = ((void*)0);
    }

}
