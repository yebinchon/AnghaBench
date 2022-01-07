
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int tGATT_TCB ;
struct TYPE_13__ {int layer_specific; } ;
struct TYPE_14__ {int already_connect; TYPE_3__ hdr; } ;
struct TYPE_12__ {int transport; int remote_bda; int remote_addr_type; } ;
struct TYPE_15__ {TYPE_4__ int_conn; TYPE_2__ api_conn; } ;
typedef TYPE_5__ tBTA_GATTC_DATA ;
struct TYPE_16__ {int bta_conn_id; TYPE_1__* p_rcb; } ;
typedef TYPE_6__ tBTA_GATTC_CLCB ;
struct TYPE_11__ {int client_if; } ;
typedef int BOOLEAN ;


 int APPL_TRACE_ERROR (char*) ;
 int BTA_GATTC_INT_CONN_EVT ;
 int BTA_GATTC_INT_OPEN_FAIL_EVT ;
 int BT_TRANSPORT_LE ;
 int FALSE ;
 int GATT_Connect (int ,int ,int ,int ,int ) ;
 scalar_t__ GATT_GetConnIdIfConnected (int ,int ,int *,int ) ;
 int TRUE ;
 int bta_gattc_sm_execute (TYPE_6__*,int ,TYPE_5__*) ;
 int gatt_find_specific_app_in_hold_link (int *,int ) ;
 int * gatt_find_tcb_by_addr (int ,int ) ;

void bta_gattc_open(tBTA_GATTC_CLCB *p_clcb, tBTA_GATTC_DATA *p_data)
{
    tBTA_GATTC_DATA gattc_data;
    BOOLEAN found_app = FALSE;

    tGATT_TCB *p_tcb = gatt_find_tcb_by_addr(p_data->api_conn.remote_bda, BT_TRANSPORT_LE);
    if(p_tcb && p_clcb && p_data) {
        found_app = gatt_find_specific_app_in_hold_link(p_tcb, p_clcb->p_rcb->client_if);
    }

    if (!GATT_Connect(p_clcb->p_rcb->client_if, p_data->api_conn.remote_bda, p_data->api_conn.remote_addr_type,
                      TRUE, p_data->api_conn.transport)) {
        APPL_TRACE_ERROR("Connection open failure");

        bta_gattc_sm_execute(p_clcb, BTA_GATTC_INT_OPEN_FAIL_EVT, p_data);
    } else {

        if (GATT_GetConnIdIfConnected(p_clcb->p_rcb->client_if,
                                      p_data->api_conn.remote_bda,
                                      &p_clcb->bta_conn_id,
                                      p_data->api_conn.transport)) {
            gattc_data.int_conn.hdr.layer_specific = p_clcb->bta_conn_id;
            gattc_data.int_conn.already_connect = found_app;
            bta_gattc_sm_execute(p_clcb, BTA_GATTC_INT_CONN_EVT, &gattc_data);
        }

    }
}
