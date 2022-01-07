
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * p_inst_id; int * p_sub_code; } ;
struct TYPE_4__ {TYPE_1__ op_q; int * p_adv_inst; } ;


 TYPE_2__ btm_multi_adv_cb ;
 int * btm_multi_adv_cb_ptr ;
 int * btm_multi_adv_idx_q_ptr ;
 int osi_free (int *) ;

void btm_ble_multi_adv_cleanup(void)
{
    if (btm_multi_adv_cb.p_adv_inst) {
        osi_free(btm_multi_adv_cb.p_adv_inst);
        btm_multi_adv_cb.p_adv_inst = ((void*)0);
    }

    if (btm_multi_adv_cb.op_q.p_sub_code) {
        osi_free(btm_multi_adv_cb.op_q.p_sub_code);
        btm_multi_adv_cb.op_q.p_sub_code = ((void*)0);
    }

    if (btm_multi_adv_cb.op_q.p_inst_id) {
        osi_free(btm_multi_adv_cb.op_q.p_inst_id);
        btm_multi_adv_cb.op_q.p_inst_id = ((void*)0);
    }


    osi_free(btm_multi_adv_cb_ptr);
    osi_free(btm_multi_adv_idx_q_ptr);
    btm_multi_adv_cb_ptr = ((void*)0);
    btm_multi_adv_idx_q_ptr = ((void*)0);

}
