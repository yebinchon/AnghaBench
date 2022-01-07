
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct timeval {int tv_usec; int tv_sec; } ;
typedef TYPE_1__* partner_state_ref ;
typedef int devtimer_timeout_func ;
typedef TYPE_2__* bondport_ref ;
struct TYPE_13__ {int verbose; } ;
struct TYPE_11__ {int ps_state; } ;
struct TYPE_12__ {int po_current_while_timer; TYPE_1__ po_partner_state; int po_actor_state; int po_receive_state; } ;
typedef int LAEvent ;


 int LACP_LONG_TIMEOUT_TIME ;
 int LACP_SHORT_TIMEOUT_TIME ;

 int LAEventStart ;

 int ReceiveState_CURRENT ;
 int bondport_RecordPDU (TYPE_2__*,void*) ;
 int bondport_UpdateNTT (TYPE_2__*,void*) ;
 int bondport_UpdateSelected (TYPE_2__*,void*) ;
 int bondport_assign_to_LAG (TYPE_2__*) ;
 int bondport_get_name (TYPE_2__*) ;
 int bondport_receive_machine_expired (TYPE_2__*,int ,int *) ;
 int devtimer_cancel (int ) ;
 int devtimer_set_relative (int ,struct timeval,int ,void*,int *) ;
 TYPE_3__* g_bond ;
 int lacp_actor_partner_state_set_not_expired (int ) ;
 int lacp_actor_partner_state_short_timeout (int ) ;
 int timestamp_printf (char*,int ) ;

__attribute__((used)) static void
bondport_receive_machine_current(bondport_ref p, LAEvent event,
     void * event_data)
{
    partner_state_ref ps;
    struct timeval tv;

    switch (event) {
    case 129:
 devtimer_cancel(p->po_current_while_timer);
 if (g_bond->verbose) {
     timestamp_printf("[%s] Receive CURRENT\n",
        bondport_get_name(p));
 }
 p->po_receive_state = ReceiveState_CURRENT;
 bondport_UpdateSelected(p, event_data);
 bondport_UpdateNTT(p, event_data);
 bondport_RecordPDU(p, event_data);
 p->po_actor_state
     = lacp_actor_partner_state_set_not_expired(p->po_actor_state);
 bondport_assign_to_LAG(p);

 ps = &p->po_partner_state;
 if (lacp_actor_partner_state_short_timeout(ps->ps_state)) {
     tv.tv_sec = LACP_SHORT_TIMEOUT_TIME;
 }
 else {
     tv.tv_sec = LACP_LONG_TIMEOUT_TIME;
 }
 tv.tv_usec = 0;
 devtimer_set_relative(p->po_current_while_timer, tv,
         (devtimer_timeout_func)
         bondport_receive_machine_current,
         (void *)128, ((void*)0));
 break;
    case 128:
 bondport_receive_machine_expired(p, LAEventStart, ((void*)0));
 break;
    default:
 break;
    }
    return;
}
