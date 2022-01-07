
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ acl_priority; int handle; } ;
typedef TYPE_1__ tL2C_LCB ;
typedef scalar_t__ UINT8 ;
typedef scalar_t__ BOOLEAN ;
typedef int BD_ADDR ;


 scalar_t__ BTM_IS_BRCM_CONTROLLER () ;
 int BTM_VendorSpecificCommand (int ,int,scalar_t__*,int *) ;
 int BT_TRANSPORT_BR_EDR ;
 scalar_t__ FALSE ;
 scalar_t__ HCI_BRCM_ACL_PRIORITY_HIGH ;
 scalar_t__ HCI_BRCM_ACL_PRIORITY_LOW ;
 int HCI_BRCM_ACL_PRIORITY_PARAM_SIZE ;
 int HCI_BRCM_SET_ACL_PRIORITY ;
 scalar_t__ L2CAP_PRIORITY_HIGH ;
 int L2CAP_TRACE_WARNING (char*) ;
 scalar_t__ TRUE ;
 int UINT16_TO_STREAM (scalar_t__*,int ) ;
 int UINT8_TO_STREAM (scalar_t__*,scalar_t__) ;
 int l2c_link_adjust_allocation () ;
 TYPE_1__* l2cu_find_lcb_by_bd_addr (int ,int ) ;

BOOLEAN l2cu_set_acl_priority (BD_ADDR bd_addr, UINT8 priority, BOOLEAN reset_after_rs)
{
    tL2C_LCB *p_lcb;
    UINT8 *pp;
    UINT8 command[HCI_BRCM_ACL_PRIORITY_PARAM_SIZE];
    UINT8 vs_param;




    if ((p_lcb = l2cu_find_lcb_by_bd_addr(bd_addr, BT_TRANSPORT_BR_EDR)) == ((void*)0)) {
        L2CAP_TRACE_WARNING ("L2CAP - no LCB for L2CA_SetAclPriority");
        return (FALSE);
    }

    if (BTM_IS_BRCM_CONTROLLER()) {

        if ((!reset_after_rs && (priority != p_lcb->acl_priority)) ||

                ( reset_after_rs && p_lcb->acl_priority == L2CAP_PRIORITY_HIGH)) {
            pp = command;

            vs_param = (priority == L2CAP_PRIORITY_HIGH) ? HCI_BRCM_ACL_PRIORITY_HIGH : HCI_BRCM_ACL_PRIORITY_LOW;

            UINT16_TO_STREAM (pp, p_lcb->handle);
            UINT8_TO_STREAM (pp, vs_param);

            BTM_VendorSpecificCommand (HCI_BRCM_SET_ACL_PRIORITY, HCI_BRCM_ACL_PRIORITY_PARAM_SIZE, command, ((void*)0));


            if (p_lcb->acl_priority != priority) {
                p_lcb->acl_priority = priority;
                l2c_link_adjust_allocation();
            }
        }
    }
    return (TRUE);
}
