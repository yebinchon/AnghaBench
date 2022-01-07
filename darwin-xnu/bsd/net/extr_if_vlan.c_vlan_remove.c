
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ifvlan_ref ;


 scalar_t__ ifvlan_flags_detaching (int ) ;
 int ifvlan_flags_set_detaching (int ) ;
 int vlan_assert_lock_held () ;
 int vlan_unconfig (int ,int) ;

__attribute__((used)) static int
vlan_remove(ifvlan_ref ifv, int need_to_wait)
{
    vlan_assert_lock_held();
    if (ifvlan_flags_detaching(ifv)) {
 return (0);
    }
    ifvlan_flags_set_detaching(ifv);
    vlan_unconfig(ifv, need_to_wait);
    return (1);
}
