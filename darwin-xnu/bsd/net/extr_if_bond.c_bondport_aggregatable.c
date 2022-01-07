
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* partner_state_ref ;
typedef TYPE_2__* bondport_ref ;
struct TYPE_8__ {int verbose; } ;
struct TYPE_6__ {int ps_state; } ;
struct TYPE_7__ {int po_receive_state; int * po_lag; int po_actor_state; TYPE_1__ po_partner_state; } ;




 int bondport_get_name (TYPE_2__*) ;
 TYPE_3__* g_bond ;
 scalar_t__ lacp_actor_partner_state_aggregatable (int ) ;
 int timestamp_printf (char*,int ) ;

__attribute__((used)) static int
bondport_aggregatable(bondport_ref p)
{
    partner_state_ref ps = &p->po_partner_state;

    if (lacp_actor_partner_state_aggregatable(p->po_actor_state) == 0
 || lacp_actor_partner_state_aggregatable(ps->ps_state) == 0) {

 return (0);
    }
    if (p->po_lag == ((void*)0)) {
 return (0);
    }
    switch (p->po_receive_state) {
    default:
 if (g_bond->verbose) {
     timestamp_printf("[%s] Port is not selectable\n",
        bondport_get_name(p));
 }
 return (0);
    case 129:
    case 128:
 break;
    }
    return (1);
}
