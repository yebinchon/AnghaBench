
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ att_lcid; int transport; int peer_bda; } ;
typedef TYPE_1__ tGATT_TCB ;
typedef int tGATT_IF ;
typedef scalar_t__ BOOLEAN ;


 scalar_t__ BTM_GetHCIConnHandle (int ,int ) ;
 scalar_t__ GATT_INVALID_ACL_HANDLE ;
 int GATT_LINK_IDLE_TIMEOUT_WHEN_NO_APP ;
 int GATT_LINK_NO_IDLE_TIMEOUT ;
 int GATT_SetIdleTimeout (int ,int ,int ) ;
 int GATT_TRACE_DEBUG (char*,...) ;
 scalar_t__ L2CAP_ATT_CID ;
 int gatt_num_apps_hold_link (TYPE_1__*) ;
 int gatt_update_app_hold_link_status (int ,TYPE_1__*,scalar_t__) ;

void gatt_update_app_use_link_flag (tGATT_IF gatt_if, tGATT_TCB *p_tcb, BOOLEAN is_add, BOOLEAN check_acl_link)
{
    GATT_TRACE_DEBUG("gatt_update_app_use_link_flag  is_add=%d chk_link=%d",
                     is_add, check_acl_link);

    gatt_update_app_hold_link_status(gatt_if, p_tcb, is_add);

    if (check_acl_link &&
            p_tcb &&
            p_tcb->att_lcid == L2CAP_ATT_CID &&
            (BTM_GetHCIConnHandle(p_tcb->peer_bda, p_tcb->transport) != GATT_INVALID_ACL_HANDLE)) {
        if (is_add) {
            GATT_TRACE_DEBUG("GATT disables link idle timer");

            GATT_SetIdleTimeout(p_tcb->peer_bda, GATT_LINK_NO_IDLE_TIMEOUT, p_tcb->transport);
        } else {
            if (!gatt_num_apps_hold_link(p_tcb)) {


                GATT_TRACE_DEBUG("GATT starts link idle timer =%d sec", GATT_LINK_IDLE_TIMEOUT_WHEN_NO_APP);
                GATT_SetIdleTimeout(p_tcb->peer_bda, GATT_LINK_IDLE_TIMEOUT_WHEN_NO_APP, p_tcb->transport);
            }

        }
    }
}
