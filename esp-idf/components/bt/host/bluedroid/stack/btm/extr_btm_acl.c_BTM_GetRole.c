
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tBTM_STATUS ;
struct TYPE_3__ {int link_role; } ;
typedef TYPE_1__ tACL_CONN ;
typedef int UINT8 ;
typedef int BD_ADDR ;


 int BTM_ROLE_UNDEFINED ;
 int BTM_SUCCESS ;
 int BTM_TRACE_DEBUG (char*) ;
 int BTM_UNKNOWN_ADDR ;
 int BT_TRANSPORT_BR_EDR ;
 TYPE_1__* btm_bda_to_acl (int ,int ) ;

tBTM_STATUS BTM_GetRole (BD_ADDR remote_bd_addr, UINT8 *p_role)
{
    tACL_CONN *p;
    BTM_TRACE_DEBUG ("BTM_GetRole\n");
    if ((p = btm_bda_to_acl(remote_bd_addr, BT_TRANSPORT_BR_EDR)) == ((void*)0)) {
        *p_role = BTM_ROLE_UNDEFINED;
        return (BTM_UNKNOWN_ADDR);
    }


    *p_role = p->link_role;
    return (BTM_SUCCESS);
}
