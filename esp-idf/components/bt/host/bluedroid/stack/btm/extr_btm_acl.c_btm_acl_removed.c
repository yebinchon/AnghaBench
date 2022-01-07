
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_10__ ;


typedef int tBT_TRANSPORT ;
struct TYPE_16__ {int sec_flags; } ;
typedef TYPE_4__ tBTM_SEC_DEV_REC ;
struct TYPE_13__ {scalar_t__ transport; int handle; int p_bda; } ;
struct TYPE_17__ {TYPE_1__ discn; int event; } ;
typedef TYPE_5__ tBTM_BL_EVENT_DATA ;
struct TYPE_18__ {scalar_t__ transport; int link_role; int hci_handle; void* link_up_issued; void* in_use; } ;
typedef TYPE_6__ tACL_CONN ;
struct TYPE_14__ {int connectable_mode; } ;
struct TYPE_15__ {TYPE_2__ inq_var; } ;
struct TYPE_12__ {TYPE_3__ ble_ctr_cb; int (* p_bl_changed_cb ) (TYPE_5__*) ;} ;
typedef int BD_ADDR ;


 int BTM_BLI_ACL_DOWN_EVT ;
 int BTM_BL_DISCN_EVT ;
 int BTM_SEC_AUTHENTICATED ;
 int BTM_SEC_AUTHORIZED ;
 int BTM_SEC_ENCRYPTED ;
 int BTM_SEC_LE_AUTHENTICATED ;
 int BTM_SEC_LE_ENCRYPTED ;
 int BTM_SEC_LE_LINK_KEY_AUTHED ;
 int BTM_SEC_LE_LINK_KEY_KNOWN ;
 int BTM_SEC_ROLE_SWITCHED ;
 int BTM_TRACE_DEBUG (char*,...) ;
 int BTM_TRACE_ERROR (char*) ;
 scalar_t__ BT_TRANSPORT_LE ;
 void* FALSE ;
 int HCI_ERR_NO_CONNECTION ;
 int btm_acl_report_role_change (int ,int ) ;
 int btm_acl_update_busy_level (int ) ;
 TYPE_6__* btm_bda_to_acl (int ,int ) ;
 TYPE_10__ btm_cb ;
 TYPE_4__* btm_find_dev (int ) ;
 int memset (TYPE_6__*,int ,int) ;
 int stub1 (TYPE_5__*) ;

void btm_acl_removed (BD_ADDR bda, tBT_TRANSPORT transport)
{
    tACL_CONN *p;
    tBTM_BL_EVENT_DATA evt_data;



    BTM_TRACE_DEBUG ("btm_acl_removed\n");
    p = btm_bda_to_acl(bda, transport);
    if (p != (tACL_CONN *)((void*)0)) {
        p->in_use = FALSE;


        btm_acl_report_role_change(HCI_ERR_NO_CONNECTION, bda);


        if (p->link_up_issued) {
            p->link_up_issued = FALSE;


            if (btm_cb.p_bl_changed_cb) {
                evt_data.event = BTM_BL_DISCN_EVT;
                evt_data.discn.p_bda = bda;

                evt_data.discn.handle = p->hci_handle;
                evt_data.discn.transport = p->transport;

                (*btm_cb.p_bl_changed_cb)(&evt_data);
            }

            btm_acl_update_busy_level (BTM_BLI_ACL_DOWN_EVT);
        }
        memset(p, 0, sizeof(tACL_CONN));
    }
}
