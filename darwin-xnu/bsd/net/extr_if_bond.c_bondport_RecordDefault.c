
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* bondport_ref ;
struct TYPE_4__ {int po_actor_state; int po_partner_state; } ;


 int bondport_assign_to_LAG (TYPE_1__*) ;
 int bzero (int *,int) ;
 int lacp_actor_partner_state_set_defaulted (int ) ;

__attribute__((used)) static void
bondport_RecordDefault(bondport_ref p)
{
    bzero(&p->po_partner_state, sizeof(p->po_partner_state));
    p->po_actor_state
 = lacp_actor_partner_state_set_defaulted(p->po_actor_state);
    bondport_assign_to_LAG(p);
    return;
}
