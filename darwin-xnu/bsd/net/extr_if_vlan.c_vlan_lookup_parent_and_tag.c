
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * vlan_parent_ref ;
struct ifnet {int dummy; } ;
typedef int * ifvlan_ref ;


 int * parent_list_lookup (struct ifnet*) ;
 int * vlan_parent_lookup_tag (int *,int) ;

__attribute__((used)) static ifvlan_ref
vlan_lookup_parent_and_tag(struct ifnet * p, int tag)
{
    vlan_parent_ref vlp;

    vlp = parent_list_lookup(p);
    if (vlp != ((void*)0)) {
 return (vlan_parent_lookup_tag(vlp, tag));
    }
    return (((void*)0));
}
