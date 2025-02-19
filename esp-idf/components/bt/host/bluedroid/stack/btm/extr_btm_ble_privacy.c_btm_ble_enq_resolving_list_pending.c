
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {size_t q_next; int * resolve_q_action; int * resolve_q_random_pseudo; } ;
typedef TYPE_2__ tBTM_BLE_RESOLVE_Q ;
typedef int UINT8 ;
struct TYPE_5__ {TYPE_2__ resolving_list_pend_q; } ;
struct TYPE_8__ {TYPE_1__ ble_ctr_cb; } ;
struct TYPE_7__ {size_t (* get_ble_resolving_list_max_size ) () ;} ;
typedef int BD_ADDR ;


 int BD_ADDR_LEN ;
 TYPE_4__ btm_cb ;
 TYPE_3__* controller_get_interface () ;
 int memcpy (int ,int ,int ) ;
 size_t stub1 () ;

void btm_ble_enq_resolving_list_pending(BD_ADDR pseudo_bda, UINT8 op_code)
{
    tBTM_BLE_RESOLVE_Q *p_q = &btm_cb.ble_ctr_cb.resolving_list_pend_q;

    memcpy(p_q->resolve_q_random_pseudo[p_q->q_next], pseudo_bda, BD_ADDR_LEN);
    p_q->resolve_q_action[p_q->q_next] = op_code;
    p_q->q_next ++;
    p_q->q_next %= controller_get_interface()->get_ble_resolving_list_max_size();
}
