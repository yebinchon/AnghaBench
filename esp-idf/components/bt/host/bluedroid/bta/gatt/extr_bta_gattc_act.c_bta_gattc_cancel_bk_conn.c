
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int (* p_cback ) (int ,TYPE_3__*) ;} ;
typedef TYPE_1__ tBTA_GATTC_RCB ;
struct TYPE_8__ {int client_if; int remote_bda; } ;
typedef TYPE_2__ tBTA_GATTC_API_CANCEL_OPEN ;
struct TYPE_9__ {int status; } ;
typedef TYPE_3__ tBTA_GATTC ;


 int APPL_TRACE_ERROR (char*) ;
 int BTA_GATTC_CANCEL_OPEN_EVT ;
 int BTA_GATT_ERROR ;
 int BTA_GATT_OK ;
 int FALSE ;
 scalar_t__ GATT_CancelConnect (int ,int ,int ) ;
 TYPE_1__* bta_gattc_cl_get_regcb (int ) ;
 scalar_t__ bta_gattc_mark_bg_conn (int ,int ,int ,int ) ;
 int stub1 (int ,TYPE_3__*) ;

void bta_gattc_cancel_bk_conn(tBTA_GATTC_API_CANCEL_OPEN *p_data)
{
    tBTA_GATTC_RCB *p_clreg;
    tBTA_GATTC cb_data;
    cb_data.status = BTA_GATT_ERROR;


    if (bta_gattc_mark_bg_conn(p_data->client_if, p_data->remote_bda, FALSE, FALSE)) {
        if (GATT_CancelConnect(p_data->client_if, p_data->remote_bda, FALSE)) {
            cb_data.status = BTA_GATT_OK;
        } else {
            APPL_TRACE_ERROR("bta_gattc_cancel_bk_conn failed");
        }
    }
    p_clreg = bta_gattc_cl_get_regcb(p_data->client_if);

    if (p_clreg && p_clreg->p_cback) {
        (*p_clreg->p_cback)(BTA_GATTC_CANCEL_OPEN_EVT, &cb_data);
    }

}
