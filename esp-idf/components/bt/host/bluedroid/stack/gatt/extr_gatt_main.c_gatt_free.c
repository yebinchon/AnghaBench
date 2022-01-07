
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int * hdl_list; int hdl_list_info; TYPE_2__* tcb; int * pending_new_srv_start_q; int * srv_chg_clt_q; int * sign_op_queue; } ;
struct TYPE_4__ {int * multi_rsp_q; } ;
struct TYPE_5__ {TYPE_1__ sr_cmd; int ind_ack_timer_ent; int conf_timer_ent; int * pending_ind_q; int * pending_enc_clcb; } ;
typedef int TIMER_LIST_ENT ;


 int FREE_AND_RESET (int ) ;
 int GATT_MAX_PHY_CHANNEL ;
 int GATT_MAX_SR_PROFILES ;
 int GATT_TRACE_DEBUG (char*) ;
 int btu_free_timer (int *) ;
 int fixed_queue_free (int *,int *) ;
 TYPE_3__ gatt_cb ;
 int gatt_cb_ptr ;
 int gatt_free_attr_value_buffer (int *) ;
 int gatt_free_hdl_buffer (int *) ;
 int gatt_remove_an_item_from_list (int *,int *) ;
 int memset (int *,int ,int) ;

void gatt_free(void)
{
    int i;
    GATT_TRACE_DEBUG("gatt_free()");
    fixed_queue_free(gatt_cb.sign_op_queue, ((void*)0));
    gatt_cb.sign_op_queue = ((void*)0);
    fixed_queue_free(gatt_cb.srv_chg_clt_q, ((void*)0));
    gatt_cb.srv_chg_clt_q = ((void*)0);
    fixed_queue_free(gatt_cb.pending_new_srv_start_q, ((void*)0));
    gatt_cb.pending_new_srv_start_q = ((void*)0);

    for (i = 0; i < GATT_MAX_PHY_CHANNEL; i++)
    {
        fixed_queue_free(gatt_cb.tcb[i].pending_enc_clcb, ((void*)0));
        gatt_cb.tcb[i].pending_enc_clcb = ((void*)0);

        fixed_queue_free(gatt_cb.tcb[i].pending_ind_q, ((void*)0));
        gatt_cb.tcb[i].pending_ind_q = ((void*)0);

        btu_free_timer(&gatt_cb.tcb[i].conf_timer_ent);
        memset(&gatt_cb.tcb[i].conf_timer_ent, 0, sizeof(TIMER_LIST_ENT));

        btu_free_timer(&gatt_cb.tcb[i].ind_ack_timer_ent);
        memset(&gatt_cb.tcb[i].ind_ack_timer_ent, 0, sizeof(TIMER_LIST_ENT));


        fixed_queue_free(gatt_cb.tcb[i].sr_cmd.multi_rsp_q, ((void*)0));
        gatt_cb.tcb[i].sr_cmd.multi_rsp_q = ((void*)0);

    }


    for (i = 0; i < GATT_MAX_SR_PROFILES; i++) {
        gatt_remove_an_item_from_list(&gatt_cb.hdl_list_info, &gatt_cb.hdl_list[i]);
        gatt_free_attr_value_buffer(&gatt_cb.hdl_list[i]);
        gatt_free_hdl_buffer(&gatt_cb.hdl_list[i]);
    }




}
