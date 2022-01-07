
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* lacpdu_ref ;
typedef int lacp_actor_partner_tlv_ref ;
typedef int * bondport_ref ;
struct TYPE_6__ {int la_actor_tlv; } ;


 int LAEventPacket ;
 int LAEventPortMoved ;
 int bondport_mux_machine (int *,int ,TYPE_1__*) ;
 int bondport_periodic_transmit_machine (int *,int ,TYPE_1__*) ;
 int bondport_receive_machine (int *,int ,TYPE_1__*) ;
 int * ifbond_list_find_moved_port (int *,int const) ;

__attribute__((used)) static void
bondport_receive_lacpdu(bondport_ref p, lacpdu_ref in_lacpdu_p)
{
    bondport_ref moved_port;

    moved_port
 = ifbond_list_find_moved_port(p, (const lacp_actor_partner_tlv_ref)
          &in_lacpdu_p->la_actor_tlv);
    if (moved_port != ((void*)0)) {
 bondport_receive_machine(moved_port, LAEventPortMoved, ((void*)0));
    }
    bondport_receive_machine(p, LAEventPacket, in_lacpdu_p);
    bondport_mux_machine(p, LAEventPacket, in_lacpdu_p);
    bondport_periodic_transmit_machine(p, LAEventPacket, in_lacpdu_p);
    return;
}
