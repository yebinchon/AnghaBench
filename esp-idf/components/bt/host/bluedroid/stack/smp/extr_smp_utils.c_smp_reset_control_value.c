
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int pairing_bda; scalar_t__ flags; int rsp_timer_ent; } ;
typedef TYPE_1__ tSMP_CB ;


 int BT_TRANSPORT_LE ;
 int L2CA_SetIdleTimeoutByBdAddr (int ,int ,int ) ;
 int SMP_LINK_TOUT_MIN ;
 int SMP_TRACE_EVENT (char*) ;
 int btu_stop_timer (int *) ;
 int smp_cb_cleanup (TYPE_1__*) ;
 int smp_remove_fixed_channel (TYPE_1__*) ;

void smp_reset_control_value(tSMP_CB *p_cb)
{
    SMP_TRACE_EVENT("smp_reset_control_value\n");
    btu_stop_timer (&p_cb->rsp_timer_ent);
    p_cb->flags = 0;




    L2CA_SetIdleTimeoutByBdAddr(p_cb->pairing_bda, SMP_LINK_TOUT_MIN, BT_TRANSPORT_LE);


    smp_remove_fixed_channel(p_cb);
    smp_cb_cleanup(p_cb);
}
