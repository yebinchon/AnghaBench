
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num_read_pages; } ;
typedef TYPE_1__ tACL_CONN ;
typedef int UINT8 ;
typedef int BD_ADDR ;


 int BTM_TRACE_DEBUG (char*) ;
 int BT_TRANSPORT_BR_EDR ;
 TYPE_1__* btm_bda_to_acl (int ,int ) ;

UINT8 BTM_ReadNumberRemoteFeaturesPages (BD_ADDR addr)
{
    tACL_CONN *p = btm_bda_to_acl(addr, BT_TRANSPORT_BR_EDR);
    BTM_TRACE_DEBUG ("BTM_ReadNumberRemoteFeaturesPages\n");
    if (p == ((void*)0)) {
        return (0);
    }

    return (p->num_read_pages);
}
