
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ifbond_ref ;
struct TYPE_2__ {int ifbond_list; } ;


 int TAILQ_REMOVE (int *,int ,int ) ;
 int bond_assert_lock_held () ;
 int bond_remove_all_interfaces (int ) ;
 TYPE_1__* g_bond ;
 int ifb_bond_list ;
 int ifbond_flags_set_if_detaching (int ) ;

__attribute__((used)) static void
bond_remove(ifbond_ref ifb)
{
    bond_assert_lock_held();
    ifbond_flags_set_if_detaching(ifb);
    TAILQ_REMOVE(&g_bond->ifbond_list, ifb, ifb_bond_list);
    bond_remove_all_interfaces(ifb);
    return;
}
