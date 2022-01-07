
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_6__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* vlan_parent_ref ;
struct ifnet {int dummy; } ;
struct TYPE_8__ {scalar_t__ verbose; } ;
struct TYPE_7__ {struct ifnet* vlp_ifp; } ;


 int PZERO ;
 TYPE_6__* g_vlan ;
 char* ifnet_name (struct ifnet*) ;
 char* ifnet_unit (struct ifnet*) ;
 int msleep (TYPE_1__*,int ,int ,char const*,int ) ;
 int printf (char*,char*,char*,char const*) ;
 int vlan_lck_mtx ;
 scalar_t__ vlan_parent_flags_change_in_progress (TYPE_1__*) ;
 int vlan_parent_flags_set_change_in_progress (TYPE_1__*) ;

__attribute__((used)) static void
vlan_parent_wait(vlan_parent_ref vlp, const char * msg)
{
    int waited = 0;


    while (vlan_parent_flags_change_in_progress(vlp)) {
 if (g_vlan->verbose) {
     struct ifnet * ifp = vlp->vlp_ifp;

     printf("%s%d: %s msleep\n", ifnet_name(ifp), ifnet_unit(ifp), msg);
 }
 waited = 1;
 (void)msleep(vlp, vlan_lck_mtx, PZERO, msg, 0);
    }

    vlan_parent_flags_set_change_in_progress(vlp);
    if (g_vlan->verbose && waited) {
 struct ifnet * ifp = vlp->vlp_ifp;

 printf("%s%d: %s woke up\n", ifnet_name(ifp), ifnet_unit(ifp), msg);
    }
    return;
}
