
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_17__ {scalar_t__ num_clcb; scalar_t__ dereg_pending; int client_if; int (* p_cback ) (int ,TYPE_7__*) ;} ;
typedef TYPE_4__ tBTA_GATTC_RCB ;
struct TYPE_16__ {int reason; } ;
struct TYPE_14__ {scalar_t__ event; int layer_specific; } ;
struct TYPE_18__ {TYPE_3__ int_conn; TYPE_1__ hdr; } ;
typedef TYPE_5__ tBTA_GATTC_DATA ;
struct TYPE_19__ {scalar_t__ transport; int bda; int status; int reason; int bta_conn_id; TYPE_4__* p_rcb; } ;
typedef TYPE_6__ tBTA_GATTC_CLCB ;
typedef int (* tBTA_GATTC_CBACK ) (int ,TYPE_7__*) ;
struct TYPE_15__ {int reason; int status; int remote_bda; int conn_id; int client_if; } ;
struct TYPE_20__ {TYPE_2__ close; } ;
typedef TYPE_7__ tBTA_GATTC ;


 int APPL_TRACE_DEBUG (char*,int ) ;
 int BTA_ALL_APP_ID ;
 scalar_t__ BTA_GATTC_API_CLOSE_EVT ;
 int BTA_GATTC_CLOSE_EVT ;
 scalar_t__ BTA_GATTC_INT_DISCONN_EVT ;
 int BTA_GATT_OK ;
 int BTA_ID_GATTC ;
 scalar_t__ BTA_TRANSPORT_BR_EDR ;
 int GATT_Disconnect (int ) ;
 int bdcpy (int ,int ) ;
 int bta_gattc_clcb_dealloc (TYPE_6__*) ;
 int bta_gattc_deregister_cmpl (TYPE_4__*) ;
 int bta_sys_conn_close (int ,int ,int ) ;
 int stub1 (int ,TYPE_7__*) ;

void bta_gattc_close(tBTA_GATTC_CLCB *p_clcb, tBTA_GATTC_DATA *p_data)
{
    tBTA_GATTC_CBACK *p_cback = p_clcb->p_rcb->p_cback;
    tBTA_GATTC_RCB *p_clreg = p_clcb->p_rcb;
    tBTA_GATTC cb_data;

    APPL_TRACE_DEBUG("bta_gattc_close conn_id=%d", p_clcb->bta_conn_id);

    cb_data.close.client_if = p_clcb->p_rcb->client_if;
    cb_data.close.conn_id = p_clcb->bta_conn_id;
    cb_data.close.reason = p_clcb->reason;
    cb_data.close.status = p_clcb->status;
    bdcpy(cb_data.close.remote_bda, p_clcb->bda);

    if (p_clcb->transport == BTA_TRANSPORT_BR_EDR) {
        bta_sys_conn_close( BTA_ID_GATTC , BTA_ALL_APP_ID, p_clcb->bda);
    }

    bta_gattc_clcb_dealloc(p_clcb);

    if (p_data->hdr.event == BTA_GATTC_API_CLOSE_EVT) {
        cb_data.close.status = GATT_Disconnect(p_data->hdr.layer_specific);
    } else if (p_data->hdr.event == BTA_GATTC_INT_DISCONN_EVT) {
        cb_data.close.status = BTA_GATT_OK;
        cb_data.close.reason = p_data->int_conn.reason;
    }

    if (p_cback) {
        (* p_cback)(BTA_GATTC_CLOSE_EVT, (tBTA_GATTC *)&cb_data);
    }

    if (p_clreg->num_clcb == 0 && p_clreg->dereg_pending) {
        bta_gattc_deregister_cmpl(p_clreg);
    }
}
