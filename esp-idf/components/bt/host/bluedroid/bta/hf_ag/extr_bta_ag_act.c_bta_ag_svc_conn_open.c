
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ call_ind; scalar_t__ callsetup_ind; int peer_addr; int app_id; int peer_codecs; int peer_features; int act_timer; scalar_t__ bia_masked_out; scalar_t__ svc_conn; } ;
typedef TYPE_2__ tBTA_AG_SCB ;
typedef int tBTA_AG_DATA ;
struct TYPE_7__ {int app_id; int handle; } ;
struct TYPE_9__ {int peer_codec; int bd_addr; int peer_feat; TYPE_1__ hdr; } ;
typedef TYPE_3__ tBTA_AG_CONN ;
typedef int tBTA_AG ;
struct TYPE_10__ {int (* p_cback ) (int ,int *) ;} ;


 scalar_t__ BTA_AG_CALLSETUP_NONE ;
 scalar_t__ BTA_AG_CALL_INACTIVE ;
 int BTA_AG_CONN_EVT ;
 int BTA_ID_AG ;
 scalar_t__ TRUE ;
 int UNUSED (int *) ;
 int bdcpy (int ,int ) ;
 TYPE_6__ bta_ag_cb ;
 int bta_ag_scb_to_idx (TYPE_2__*) ;
 int bta_sys_sco_use (int ,int ,int ) ;
 int bta_sys_stop_timer (int *) ;
 int stub1 (int ,int *) ;

void bta_ag_svc_conn_open(tBTA_AG_SCB *p_scb, tBTA_AG_DATA *p_data)
{
    tBTA_AG_CONN evt;
    UNUSED(p_data);

    if (!p_scb->svc_conn) {

        p_scb->svc_conn = TRUE;

        p_scb->bia_masked_out = 0;

        bta_sys_stop_timer(&p_scb->act_timer);

        evt.hdr.handle = bta_ag_scb_to_idx(p_scb);
        evt.hdr.app_id = p_scb->app_id;
        evt.peer_feat = p_scb->peer_features;
        bdcpy(evt.bd_addr, p_scb->peer_addr);

        evt.peer_codec = p_scb->peer_codecs;

        if ((p_scb->call_ind != BTA_AG_CALL_INACTIVE) ||
            (p_scb->callsetup_ind != BTA_AG_CALLSETUP_NONE)) {
            bta_sys_sco_use(BTA_ID_AG, p_scb->app_id, p_scb->peer_addr);
        }
        (*bta_ag_cb.p_cback)(BTA_AG_CONN_EVT, (tBTA_AG *) &evt);
    }
}
