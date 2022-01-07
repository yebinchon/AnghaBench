
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ** peer_lmp_features; } ;
typedef TYPE_1__ tACL_CONN ;
typedef int UINT8 ;
typedef int BD_ADDR ;


 int BTM_TRACE_DEBUG (char*) ;
 int BT_TRANSPORT_BR_EDR ;
 size_t HCI_EXT_FEATURES_PAGE_0 ;
 TYPE_1__* btm_bda_to_acl (int ,int ) ;

UINT8 *BTM_ReadAllRemoteFeatures (BD_ADDR addr)
{
    tACL_CONN *p = btm_bda_to_acl(addr, BT_TRANSPORT_BR_EDR);
    BTM_TRACE_DEBUG ("BTM_ReadAllRemoteFeatures\n");
    if (p == ((void*)0)) {
        return (((void*)0));
    }

    return (p->peer_lmp_features[HCI_EXT_FEATURES_PAGE_0]);
}
