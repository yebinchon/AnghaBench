
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int hci_status; } ;
typedef TYPE_2__ tBTM_ROLE_SWITCH_CMPL ;
typedef int UINT8 ;
struct TYPE_10__ {int remote_bd_addr; } ;
struct TYPE_8__ {int (* p_switch_role_cb ) (TYPE_2__*) ;TYPE_4__ switch_role_ref_data; } ;
struct TYPE_11__ {TYPE_1__ devcb; } ;
typedef scalar_t__ BD_ADDR ;


 int BD_ADDR_LEN ;
 int BTM_TRACE_DEBUG (char*) ;
 TYPE_7__ btm_cb ;
 scalar_t__ memcmp (int ,scalar_t__,int ) ;
 int memcpy (TYPE_2__*,TYPE_4__*,int) ;
 int memset (TYPE_4__*,int ,int) ;
 int stub1 (TYPE_2__*) ;

void btm_acl_report_role_change (UINT8 hci_status, BD_ADDR bda)
{
    tBTM_ROLE_SWITCH_CMPL ref_data;
    BTM_TRACE_DEBUG ("btm_acl_report_role_change\n");
    if (btm_cb.devcb.p_switch_role_cb
            && (bda && (0 == memcmp(btm_cb.devcb.switch_role_ref_data.remote_bd_addr, bda, BD_ADDR_LEN)))) {
        memcpy (&ref_data, &btm_cb.devcb.switch_role_ref_data, sizeof(tBTM_ROLE_SWITCH_CMPL));
        ref_data.hci_status = hci_status;
        (*btm_cb.devcb.p_switch_role_cb)(&ref_data);
        memset (&btm_cb.devcb.switch_role_ref_data, 0, sizeof(tBTM_ROLE_SWITCH_CMPL));
        btm_cb.devcb.p_switch_role_cb = ((void*)0);
    }
}
