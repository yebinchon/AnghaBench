
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tBTM_STATUS ;
struct TYPE_3__ {int link_super_tout; } ;
typedef TYPE_1__ tACL_CONN ;
typedef int UINT16 ;
typedef int BD_ADDR ;


 int BTM_SUCCESS ;
 int BTM_TRACE_DEBUG (char*) ;
 int BTM_UNKNOWN_ADDR ;
 int BT_TRANSPORT_BR_EDR ;
 TYPE_1__* btm_bda_to_acl (int ,int ) ;

tBTM_STATUS BTM_GetLinkSuperTout (BD_ADDR remote_bda, UINT16 *p_timeout)
{
    tACL_CONN *p = btm_bda_to_acl(remote_bda, BT_TRANSPORT_BR_EDR);

    BTM_TRACE_DEBUG ("BTM_GetLinkSuperTout\n");
    if (p != (tACL_CONN *)((void*)0)) {
        *p_timeout = p->link_super_tout;
        return (BTM_SUCCESS);
    }

    return (BTM_UNKNOWN_ADDR);
}
