
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_8__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int client_if; scalar_t__ num_clcb; int dereg_pending; } ;
typedef TYPE_2__ tBTA_GATTC_RCB ;
typedef int tBTA_GATTC_DATA ;
struct TYPE_11__ {TYPE_8__* clcb; TYPE_1__* bg_track; } ;
typedef TYPE_3__ tBTA_GATTC_CB ;
typedef size_t UINT8 ;
struct TYPE_13__ {int bta_conn_id; TYPE_2__* p_rcb; scalar_t__ in_use; } ;
struct TYPE_12__ {int layer_specific; int event; } ;
struct TYPE_9__ {int cif_mask; int cif_adv_mask; int remote_bda; scalar_t__ in_use; } ;
typedef TYPE_4__ BT_HDR ;


 int APPL_TRACE_ERROR (char*) ;
 int BTA_GATTC_API_CLOSE_EVT ;
 size_t BTA_GATTC_CLCB_MAX ;
 size_t BTA_GATTC_KNOWN_SR_MAX ;
 int FALSE ;
 int GATT_CancelConnect (int,int ,int ) ;
 int TRUE ;
 int bta_gattc_close (TYPE_8__*,int *) ;
 int bta_gattc_deregister_cmpl (TYPE_2__*) ;
 int bta_gattc_mark_bg_conn (int,int ,int ,int ) ;

void bta_gattc_deregister(tBTA_GATTC_CB *p_cb, tBTA_GATTC_RCB *p_clreg)
{
    UINT8 i;
    BT_HDR buf;

    if (p_clreg != ((void*)0)) {

        for (i = 0; i < BTA_GATTC_KNOWN_SR_MAX; i ++) {
            if (p_cb->bg_track[i].in_use) {
                if (p_cb->bg_track[i].cif_mask & (1 << (p_clreg->client_if - 1))) {
                    bta_gattc_mark_bg_conn(p_clreg->client_if, p_cb->bg_track[i].remote_bda, FALSE, FALSE);
                    GATT_CancelConnect(p_clreg->client_if, p_cb->bg_track[i].remote_bda, FALSE);
                }
                if (p_cb->bg_track[i].cif_adv_mask & (1 << (p_clreg->client_if - 1))) {
                    bta_gattc_mark_bg_conn(p_clreg->client_if, p_cb->bg_track[i].remote_bda, FALSE, TRUE);
                }
            }
        }

        if (p_clreg->num_clcb > 0) {

            for (i = 0; i < BTA_GATTC_CLCB_MAX; i ++) {
                if (p_cb->clcb[i].in_use && (p_cb->clcb[i].p_rcb == p_clreg)) {
                    p_clreg->dereg_pending = TRUE;

                    buf.event = BTA_GATTC_API_CLOSE_EVT;
                    buf.layer_specific = p_cb->clcb[i].bta_conn_id;
                    bta_gattc_close(&p_cb->clcb[i], (tBTA_GATTC_DATA *)&buf) ;
                }
            }
        } else {
            bta_gattc_deregister_cmpl(p_clreg);
        }
    } else {
        APPL_TRACE_ERROR("bta_gattc_deregister Deregister Failedm unknown client cif");
    }
}
