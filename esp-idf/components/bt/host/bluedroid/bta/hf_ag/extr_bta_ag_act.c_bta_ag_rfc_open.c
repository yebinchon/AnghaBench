
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_7__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int cmd_max_len; TYPE_1__* p_user; int * p_err_cback; int * p_cmd_cback; int * p_at_tbl; } ;
struct TYPE_8__ {int inband_enabled; int features; size_t conn_service; int act_timer; int peer_addr; int app_id; int air_mode; TYPE_7__ at_cb; void* cmee_enabled; void* cmer_enabled; void* ccwa_enabled; void* clip_enabled; } ;
typedef TYPE_1__ tBTA_AG_SCB ;
typedef int tBTA_AG_DATA ;
typedef int tBTA_AG_AT_ERR_CBACK ;
typedef int tBTA_AG_AT_CMD_CBACK ;
typedef int tBTA_AG_AT_CMD ;
struct TYPE_9__ {int conn_tout; } ;


 int BTA_AG_CMD_MAX ;
 int BTA_AG_FEAT_INBAND ;
 size_t BTA_AG_HFP ;
 int BTA_AG_SUCCESS ;
 int BTA_AG_SVC_TOUT_EVT ;
 int BTA_HFP_SCO_OUT_PKT_SIZE ;
 int BTA_ID_AG ;
 void* FALSE ;
 scalar_t__* bta_ag_at_cback_tbl ;
 scalar_t__ bta_ag_at_err_cback ;
 int bta_ag_at_init (TYPE_7__*) ;
 scalar_t__* bta_ag_at_tbl ;
 int bta_ag_cback_open (TYPE_1__*,int *,int ) ;
 int bta_ag_scb_to_idx (TYPE_1__*) ;
 int bta_ag_sco_co_open (int ,int ,int ,int ) ;
 int bta_ag_svc_conn_open (TYPE_1__*,int *) ;
 int * bta_ag_svc_id ;
 int bta_sys_conn_open (int ,int ,int ) ;
 int bta_sys_start_timer (int *,int ,int ) ;
 TYPE_2__* p_bta_ag_cfg ;

void bta_ag_rfc_open(tBTA_AG_SCB *p_scb, tBTA_AG_DATA *p_data)
{

    p_scb->clip_enabled = FALSE;
    p_scb->ccwa_enabled = FALSE;
    p_scb->cmer_enabled = FALSE;
    p_scb->cmee_enabled = FALSE;
    p_scb->inband_enabled = ((p_scb->features & BTA_AG_FEAT_INBAND) == BTA_AG_FEAT_INBAND);


    p_scb->at_cb.p_at_tbl = (tBTA_AG_AT_CMD *) bta_ag_at_tbl[p_scb->conn_service];
    p_scb->at_cb.p_cmd_cback = (tBTA_AG_AT_CMD_CBACK *) bta_ag_at_cback_tbl[p_scb->conn_service];
    p_scb->at_cb.p_err_cback = (tBTA_AG_AT_ERR_CBACK *) bta_ag_at_err_cback;
    p_scb->at_cb.p_user = p_scb;
    p_scb->at_cb.cmd_max_len = BTA_AG_CMD_MAX;
    bta_ag_at_init(&p_scb->at_cb);


    bta_ag_sco_co_open(bta_ag_scb_to_idx(p_scb), p_scb->air_mode, BTA_HFP_SCO_OUT_PKT_SIZE, bta_ag_svc_id[p_scb->conn_service]);
    bta_sys_conn_open(BTA_ID_AG, p_scb->app_id, p_scb->peer_addr);
    bta_ag_cback_open(p_scb, ((void*)0), BTA_AG_SUCCESS);

    if (p_scb->conn_service == BTA_AG_HFP) {

        bta_sys_start_timer(&p_scb->act_timer, BTA_AG_SVC_TOUT_EVT, p_bta_ag_cfg->conn_tout);
    } else {

        bta_ag_svc_conn_open(p_scb, p_data);
    }
}
