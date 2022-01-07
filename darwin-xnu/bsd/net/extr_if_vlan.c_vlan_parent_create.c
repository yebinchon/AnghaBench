
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* vlan_parent_ref ;
struct ifnet {int dummy; } ;
struct TYPE_6__ {int vlp_retain_count; int vlp_signature; struct ifnet* vlp_ifp; int vlp_vlan_list; int vlp_devmtu; } ;


 int ENOMEM ;
 int FREE (TYPE_1__*,int ) ;
 int IF_HWASSIST_VLAN_MTU ;
 int IF_HWASSIST_VLAN_TAGGING ;
 int LIST_INIT (int *) ;
 int M_VLAN ;
 int M_WAITOK ;
 int M_ZERO ;
 int VLP_SIGNATURE ;
 TYPE_1__* _MALLOC (int,int ,int) ;
 char* ifnet_name (struct ifnet*) ;
 int ifnet_offload (struct ifnet*) ;
 int ifnet_unit (struct ifnet*) ;
 int printf (char*,char*,int,int) ;
 int siocgifdevmtu (struct ifnet*,int *) ;
 int vlan_parent_flags_set_supports_vlan_mtu (TYPE_1__*) ;

__attribute__((used)) static int
vlan_parent_create(struct ifnet * p, vlan_parent_ref * ret_vlp)
{
    int error;
    vlan_parent_ref vlp;

    *ret_vlp = ((void*)0);
    vlp = _MALLOC(sizeof(*vlp), M_VLAN, M_WAITOK | M_ZERO);
    if (vlp == ((void*)0)) {
 return (ENOMEM);
    }
    error = siocgifdevmtu(p, &vlp->vlp_devmtu);
    if (error != 0) {
 printf("vlan_parent_create (%s%d): siocgifdevmtu failed, %d\n",
        ifnet_name(p), ifnet_unit(p), error);
 FREE(vlp, M_VLAN);
 return (error);
    }
    LIST_INIT(&vlp->vlp_vlan_list);
    vlp->vlp_ifp = p;
    vlp->vlp_retain_count = 1;
    vlp->vlp_signature = VLP_SIGNATURE;
    if (ifnet_offload(p)
 & (IF_HWASSIST_VLAN_MTU | IF_HWASSIST_VLAN_TAGGING)) {
 vlan_parent_flags_set_supports_vlan_mtu(vlp);
    }
    *ret_vlp = vlp;
    return (0);
}
