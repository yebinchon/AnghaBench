
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tBT_TRANSPORT ;
struct TYPE_3__ {int hci_handle; } ;
typedef TYPE_1__ tACL_CONN ;
typedef int UINT16 ;
typedef int BD_ADDR ;


 int BTM_TRACE_DEBUG (char*) ;
 TYPE_1__* btm_bda_to_acl (int ,int ) ;

UINT16 BTM_GetHCIConnHandle (BD_ADDR remote_bda, tBT_TRANSPORT transport)
{
    tACL_CONN *p;
    BTM_TRACE_DEBUG ("BTM_GetHCIConnHandle\n");
    p = btm_bda_to_acl(remote_bda, transport);
    if (p != (tACL_CONN *)((void*)0)) {
        return (p->hci_handle);
    }


    return (0xFFFF);
}
