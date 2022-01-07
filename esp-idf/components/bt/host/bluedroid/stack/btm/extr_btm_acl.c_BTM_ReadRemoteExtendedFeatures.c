
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t** peer_lmp_features; } ;
typedef TYPE_1__ tACL_CONN ;
typedef size_t UINT8 ;
typedef int BD_ADDR ;


 int BTM_TRACE_DEBUG (char*) ;
 int BTM_TRACE_ERROR (char*,size_t) ;
 int BT_TRANSPORT_BR_EDR ;
 size_t HCI_EXT_FEATURES_PAGE_MAX ;
 TYPE_1__* btm_bda_to_acl (int ,int ) ;

UINT8 *BTM_ReadRemoteExtendedFeatures (BD_ADDR addr, UINT8 page_number)
{
    tACL_CONN *p = btm_bda_to_acl(addr, BT_TRANSPORT_BR_EDR);
    BTM_TRACE_DEBUG ("BTM_ReadRemoteExtendedFeatures\n");
    if (p == ((void*)0)) {
        return (((void*)0));
    }

    if (page_number > HCI_EXT_FEATURES_PAGE_MAX) {
        BTM_TRACE_ERROR("Warning: BTM_ReadRemoteExtendedFeatures page %d unknown\n", page_number);
        return ((void*)0);
    }

    return (p->peer_lmp_features[page_number]);
}
