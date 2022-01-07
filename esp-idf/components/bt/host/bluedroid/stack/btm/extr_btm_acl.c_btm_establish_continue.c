
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ transport; int handle; int p_features; int p_dc; int p_bdn; int p_bda; } ;
struct TYPE_9__ {TYPE_1__ conn; int event; } ;
typedef TYPE_2__ tBTM_BL_EVENT_DATA ;
struct TYPE_10__ {scalar_t__ transport; int hci_handle; int * peer_lmp_features; int remote_dc; int remote_name; int remote_addr; int link_up_issued; } ;
typedef TYPE_3__ tACL_CONN ;
struct TYPE_11__ {int (* p_bl_changed_cb ) (TYPE_2__*) ;scalar_t__ btm_def_link_policy; int btm_acl_pkt_types_supported; } ;


 int BTM_BLI_ACL_UP_EVT ;
 int BTM_BL_CONN_EVT ;
 int BTM_SetLinkPolicy (int ,scalar_t__*) ;
 int BTM_TRACE_DEBUG (char*) ;
 scalar_t__ BT_TRANSPORT_BR_EDR ;
 size_t HCI_EXT_FEATURES_PAGE_0 ;
 int TRUE ;
 int btm_acl_update_busy_level (int ) ;
 TYPE_7__ btm_cb ;
 int btm_set_packet_types (TYPE_3__*,int ) ;
 int stub1 (TYPE_2__*) ;

void btm_establish_continue (tACL_CONN *p_acl_cb)
{
    tBTM_BL_EVENT_DATA evt_data;
    BTM_TRACE_DEBUG ("btm_establish_continue\n");




    {



        btm_set_packet_types (p_acl_cb, btm_cb.btm_acl_pkt_types_supported);

        if (btm_cb.btm_def_link_policy) {
            BTM_SetLinkPolicy (p_acl_cb->remote_addr, &btm_cb.btm_def_link_policy);
        }
    }

    p_acl_cb->link_up_issued = TRUE;


    if (btm_cb.p_bl_changed_cb) {
        evt_data.event = BTM_BL_CONN_EVT;
        evt_data.conn.p_bda = p_acl_cb->remote_addr;
        evt_data.conn.p_bdn = p_acl_cb->remote_name;
        evt_data.conn.p_dc = p_acl_cb->remote_dc;
        evt_data.conn.p_features = p_acl_cb->peer_lmp_features[HCI_EXT_FEATURES_PAGE_0];

        evt_data.conn.handle = p_acl_cb->hci_handle;
        evt_data.conn.transport = p_acl_cb->transport;


        (*btm_cb.p_bl_changed_cb)(&evt_data);
    }
    btm_acl_update_busy_level (BTM_BLI_ACL_UP_EVT);
}
