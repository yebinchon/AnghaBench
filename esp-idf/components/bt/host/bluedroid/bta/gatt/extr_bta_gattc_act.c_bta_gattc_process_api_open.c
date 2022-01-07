
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int tBTA_GATTC_RCB ;
struct TYPE_8__ {int client_if; int transport; int remote_bda; scalar_t__ is_direct; } ;
struct TYPE_6__ {TYPE_5__ api_conn; } ;
typedef TYPE_1__ tBTA_GATTC_DATA ;
typedef int tBTA_GATTC_CLCB ;
typedef int tBTA_GATTC_CB ;
typedef int UINT16 ;
struct TYPE_7__ {int event; } ;
typedef TYPE_2__ BT_HDR ;


 int APPL_TRACE_ERROR (char*,...) ;
 int BTA_GATT_INVALID_CONN_ID ;
 int BTA_GATT_NO_RESOURCES ;
 int UNUSED (int *) ;
 int * bta_gattc_cl_get_regcb (int ) ;
 int * bta_gattc_find_alloc_clcb (int ,int ,int ) ;
 int bta_gattc_init_bk_conn (TYPE_5__*,int *) ;
 int bta_gattc_send_open_cback (int *,int ,int ,int ,int ,int ) ;
 int bta_gattc_sm_execute (int *,int ,TYPE_1__*) ;

void bta_gattc_process_api_open (tBTA_GATTC_CB *p_cb, tBTA_GATTC_DATA *p_msg)
{
    UINT16 event = ((BT_HDR *)p_msg)->event;
    tBTA_GATTC_CLCB *p_clcb = ((void*)0);
    tBTA_GATTC_RCB *p_clreg = bta_gattc_cl_get_regcb(p_msg->api_conn.client_if);
    UNUSED(p_cb);

    if (p_clreg != ((void*)0)) {
        if (p_msg->api_conn.is_direct) {
            if ((p_clcb = bta_gattc_find_alloc_clcb(p_msg->api_conn.client_if,
                                                    p_msg->api_conn.remote_bda,
                                                    p_msg->api_conn.transport)) != ((void*)0)) {
                bta_gattc_sm_execute(p_clcb, event, p_msg);
            } else {
                APPL_TRACE_ERROR("No resources to open a new connection.");

                bta_gattc_send_open_cback(p_clreg,
                                          BTA_GATT_NO_RESOURCES,
                                          p_msg->api_conn.remote_bda,
                                          BTA_GATT_INVALID_CONN_ID,
                                          p_msg->api_conn.transport, 0);
            }
        } else {
            bta_gattc_init_bk_conn(&p_msg->api_conn, p_clreg);
        }
    } else {
        APPL_TRACE_ERROR("bta_gattc_process_api_open Failed, unknown client_if: %d",
                         p_msg->api_conn.client_if);
    }
}
