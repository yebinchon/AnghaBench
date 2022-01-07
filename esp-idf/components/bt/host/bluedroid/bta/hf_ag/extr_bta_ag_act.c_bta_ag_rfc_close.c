
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


typedef int tBTA_SERVICE_MASK ;
struct TYPE_14__ {scalar_t__ dealloc; int reg_services; scalar_t__ conn_handle; int peer_addr; int app_id; scalar_t__* serv_handle; int cn_timer; int act_timer; int at_cb; int hsp_version; scalar_t__ svc_conn; int post_sco; scalar_t__ role; int codec_msbc_settings; scalar_t__ codec_fallback; scalar_t__ codec_updated; void* sco_codec; void* peer_codecs; scalar_t__ peer_features; scalar_t__ conn_service; } ;
typedef TYPE_3__ tBTA_AG_SCB ;
typedef int tBTA_AG_DATA ;
struct TYPE_12__ {int app_id; int handle; } ;
struct TYPE_15__ {int bd_addr; TYPE_1__ hdr; } ;
typedef TYPE_4__ tBTA_AG_CLOSE ;
typedef int tBTA_AG ;
struct TYPE_13__ {scalar_t__ svc_conn; scalar_t__ in_use; } ;
struct TYPE_11__ {TYPE_2__* scb; int (* p_cback ) (int ,int *) ;} ;


 int BTA_AG_CLOSE_EVT ;
 void* BTA_AG_CODEC_NONE ;
 int BTA_AG_NUM_IDX ;
 int BTA_AG_NUM_SCB ;
 int BTA_AG_POST_SCO_NONE ;
 int BTA_AG_SCO_MSBC_SETTINGS_T2 ;
 int BTA_HSP_SERVICE_ID ;
 int BTA_ID_AG ;
 scalar_t__ FALSE ;
 int HSP_VERSION_1_2 ;
 int RFCOMM_RemoveServer (scalar_t__) ;
 int UNUSED (int *) ;
 int bd_addr_null ;
 int bdcpy (int ,int ) ;
 int bta_ag_at_reinit (int *) ;
 TYPE_10__ bta_ag_cb ;
 int bta_ag_scb_dealloc (TYPE_3__*) ;
 int bta_ag_scb_to_idx (TYPE_3__*) ;
 int bta_ag_sco_co_close () ;
 int bta_ag_sco_shutdown (TYPE_3__*,int *) ;
 int bta_ag_start_servers (TYPE_3__*,int) ;
 int bta_sys_conn_close (int ,int ,int ) ;
 int bta_sys_sco_unuse (int ,int ,int ) ;
 int bta_sys_stop_timer (int *) ;
 int stub1 (int ,int *) ;

void bta_ag_rfc_close(tBTA_AG_SCB *p_scb, tBTA_AG_DATA *p_data)
{
    tBTA_AG_CLOSE close;
    tBTA_SERVICE_MASK services;
    int i, num_active_conn = 0;
    UNUSED(p_data);

    p_scb->conn_service = 0;
    p_scb->peer_features = 0;

    p_scb->peer_codecs = BTA_AG_CODEC_NONE;
    p_scb->sco_codec = BTA_AG_CODEC_NONE;

    p_scb->codec_updated = FALSE;
    p_scb->codec_fallback = FALSE;
    p_scb->codec_msbc_settings = BTA_AG_SCO_MSBC_SETTINGS_T2;

    p_scb->role = 0;
    p_scb->post_sco = BTA_AG_POST_SCO_NONE;
    p_scb->svc_conn = FALSE;
    p_scb->hsp_version = HSP_VERSION_1_2;
    bta_ag_at_reinit(&p_scb->at_cb);

    bta_sys_stop_timer(&p_scb->act_timer);

    bta_sys_stop_timer(&p_scb->cn_timer);

    close.hdr.handle = bta_ag_scb_to_idx(p_scb);
    close.hdr.app_id = p_scb->app_id;
    bdcpy(close.bd_addr, p_scb->peer_addr);

    bta_sys_conn_close(BTA_ID_AG, p_scb->app_id, p_scb->peer_addr);



    bta_ag_sco_co_close();

    (*bta_ag_cb.p_cback)(BTA_AG_CLOSE_EVT, (tBTA_AG *) &close);


    if (p_scb->dealloc == FALSE) {

        bdcpy(p_scb->peer_addr, bd_addr_null);


        services = p_scb->reg_services;
        for (i = 0; i < BTA_AG_NUM_IDX && services != 0; i++) {
            if (p_scb->serv_handle[i]) {
                services &= ~((tBTA_SERVICE_MASK)1 << (BTA_HSP_SERVICE_ID + i));
            }
        }
        bta_ag_start_servers(p_scb, services);
        p_scb->conn_handle = 0;

        bta_ag_sco_shutdown(p_scb, ((void*)0));

        for (i = 0; i < BTA_AG_NUM_SCB; i++) {
            if (bta_ag_cb.scb[i].in_use && bta_ag_cb.scb[i].svc_conn) {
                num_active_conn++;
            }
        }
        if (!num_active_conn) {
            bta_sys_sco_unuse(BTA_ID_AG, p_scb->app_id, p_scb->peer_addr);
        }
    } else {

        RFCOMM_RemoveServer(p_scb->conn_handle);
        bta_ag_scb_dealloc(p_scb);
    }
}
