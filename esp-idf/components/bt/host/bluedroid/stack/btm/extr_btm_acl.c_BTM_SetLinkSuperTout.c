
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tBTM_STATUS ;
struct TYPE_3__ {scalar_t__ link_role; int hci_handle; int link_super_tout; } ;
typedef TYPE_1__ tACL_CONN ;
typedef int UINT16 ;
typedef int BD_ADDR ;


 int BTM_CMD_STARTED ;
 int BTM_NO_RESOURCES ;
 scalar_t__ BTM_ROLE_MASTER ;
 int BTM_SUCCESS ;
 int BTM_TRACE_DEBUG (char*) ;
 int BTM_UNKNOWN_ADDR ;
 int BT_TRANSPORT_BR_EDR ;
 int LOCAL_BR_EDR_CONTROLLER_ID ;
 TYPE_1__* btm_bda_to_acl (int ,int ) ;
 int btsnd_hcic_write_link_super_tout (int ,int ,int ) ;

tBTM_STATUS BTM_SetLinkSuperTout (BD_ADDR remote_bda, UINT16 timeout)
{
    tACL_CONN *p = btm_bda_to_acl(remote_bda, BT_TRANSPORT_BR_EDR);

    BTM_TRACE_DEBUG ("BTM_SetLinkSuperTout\n");
    if (p != (tACL_CONN *)((void*)0)) {
        p->link_super_tout = timeout;


        if (p->link_role == BTM_ROLE_MASTER) {
            if (!btsnd_hcic_write_link_super_tout (LOCAL_BR_EDR_CONTROLLER_ID,
                                                   p->hci_handle, timeout)) {
                return (BTM_NO_RESOURCES);
            }

            return (BTM_CMD_STARTED);
        } else {
            return (BTM_SUCCESS);
        }
    }


    return (BTM_UNKNOWN_ADDR);
}
