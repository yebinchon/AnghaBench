
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* ifbond_ref ;
typedef TYPE_2__* bondport_ref ;
struct TYPE_7__ {int po_ifp; } ;
struct TYPE_6__ {int ifb_port_list; } ;


 TYPE_2__* TAILQ_LAST (int *,int ) ;
 int bond_assert_lock_held () ;
 int bond_remove_interface (TYPE_1__*,int ) ;
 int port_list ;

__attribute__((used)) static void
bond_remove_all_interfaces(ifbond_ref ifb)
{
    bondport_ref p;

    bond_assert_lock_held();





    while ((p = TAILQ_LAST(&ifb->ifb_port_list, port_list)) != ((void*)0)) {
 bond_remove_interface(ifb, p->po_ifp);
    }
    return;
}
