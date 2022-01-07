
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int remote_bda; } ;
struct TYPE_13__ {TYPE_1__ api_cancel_conn; } ;
typedef TYPE_3__ tBTA_GATTC_DATA ;
struct TYPE_14__ {TYPE_2__* p_rcb; } ;
typedef TYPE_4__ tBTA_GATTC_CLCB ;
struct TYPE_15__ {int status; } ;
typedef TYPE_5__ tBTA_GATTC ;
struct TYPE_12__ {int (* p_cback ) (int ,TYPE_5__*) ;int client_if; } ;


 int BTA_GATTC_CANCEL_OPEN_EVT ;
 int BTA_GATTC_INT_CANCEL_OPEN_OK_EVT ;
 int BTA_GATT_ERROR ;
 scalar_t__ GATT_CancelConnect (int ,int ,int ) ;
 int TRUE ;
 int bta_gattc_sm_execute (TYPE_4__*,int ,TYPE_3__*) ;
 int stub1 (int ,TYPE_5__*) ;

void bta_gattc_cancel_open(tBTA_GATTC_CLCB *p_clcb, tBTA_GATTC_DATA *p_data)
{
    tBTA_GATTC cb_data;

    if (GATT_CancelConnect(p_clcb->p_rcb->client_if, p_data->api_cancel_conn.remote_bda, TRUE)) {
        bta_gattc_sm_execute(p_clcb, BTA_GATTC_INT_CANCEL_OPEN_OK_EVT, p_data);
    } else {
        if ( p_clcb->p_rcb->p_cback ) {
            cb_data.status = BTA_GATT_ERROR;
            (*p_clcb->p_rcb->p_cback)(BTA_GATTC_CANCEL_OPEN_EVT, &cb_data);
        }
    }
}
