
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


struct TYPE_11__ {int layer_specific; } ;
struct TYPE_14__ {TYPE_1__ hdr; } ;
typedef TYPE_4__ tBTA_GATTC_DATA ;
struct TYPE_15__ {TYPE_3__* p_rcb; int bda; } ;
typedef TYPE_5__ tBTA_GATTC_CLCB ;
struct TYPE_12__ {int reason; int status; int remote_bda; int conn_id; int client_if; } ;
struct TYPE_16__ {TYPE_2__ close; } ;
typedef TYPE_6__ tBTA_GATTC ;
struct TYPE_13__ {int (* p_cback ) (int ,TYPE_6__*) ;int client_if; } ;


 int BTA_GATTC_CLOSE_EVT ;
 int BTA_GATT_CONN_NONE ;
 int BTA_GATT_ERROR ;
 int bdcpy (int ,int ) ;
 int memset (TYPE_6__*,int ,int) ;
 int stub1 (int ,TYPE_6__*) ;

void bta_gattc_close_fail(tBTA_GATTC_CLCB *p_clcb, tBTA_GATTC_DATA *p_data)
{
    tBTA_GATTC cb_data;

    if ( p_clcb->p_rcb->p_cback ) {
        memset(&cb_data, 0, sizeof(tBTA_GATTC));
        cb_data.close.client_if = p_clcb->p_rcb->client_if;
        cb_data.close.conn_id = p_data->hdr.layer_specific;
        bdcpy(cb_data.close.remote_bda, p_clcb->bda);
        cb_data.close.status = BTA_GATT_ERROR;
        cb_data.close.reason = BTA_GATT_CONN_NONE;


        (*p_clcb->p_rcb->p_cback)(BTA_GATTC_CLOSE_EVT, &cb_data);
    }
}
