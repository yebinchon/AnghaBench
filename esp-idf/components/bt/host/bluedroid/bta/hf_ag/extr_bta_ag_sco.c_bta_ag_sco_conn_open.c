
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int codec_msbc_settings; int retry_with_sco_only; int air_mode; int app_id; int inuse_codec; int peer_addr; } ;
typedef TYPE_1__ tBTA_AG_SCB ;
typedef int tBTA_AG_DATA ;


 int BTA_AG_AUDIO_OPEN_EVT ;
 int BTA_AG_CI_SCO_DATA_EVT ;
 int BTA_AG_SCO_CONN_OPEN_E ;
 int BTA_AG_SCO_MSBC_SETTINGS_T2 ;
 int BTA_HFP_SCO_OUT_PKT_SIZE ;
 int BTA_ID_AG ;
 int FALSE ;
 int SCO_STATE_ON ;
 int UNUSED (int *) ;
 int bta_ag_cback_sco (TYPE_1__*,int ) ;
 int bta_ag_scb_to_idx (TYPE_1__*) ;
 int bta_ag_sco_audio_state (int ,int ,int ,...) ;
 int bta_ag_sco_co_open (int ,int ,int ,int ) ;
 int bta_ag_sco_event (TYPE_1__*,int ) ;
 int bta_sys_sco_open (int ,int ,int ) ;

void bta_ag_sco_conn_open(tBTA_AG_SCB *p_scb, tBTA_AG_DATA *p_data)
{
    UNUSED(p_data);

    bta_ag_sco_event(p_scb, BTA_AG_SCO_CONN_OPEN_E);

    bta_sys_sco_open(BTA_ID_AG, p_scb->app_id, p_scb->peer_addr);




    bta_ag_sco_audio_state(bta_ag_scb_to_idx(p_scb), p_scb->app_id, SCO_STATE_ON, p_scb->inuse_codec);




    bta_ag_sco_co_open(bta_ag_scb_to_idx(p_scb), p_scb->air_mode, BTA_HFP_SCO_OUT_PKT_SIZE, BTA_AG_CI_SCO_DATA_EVT);



    bta_ag_cback_sco(p_scb, BTA_AG_AUDIO_OPEN_EVT);

    p_scb->retry_with_sco_only = FALSE;


    p_scb->codec_msbc_settings = BTA_AG_SCO_MSBC_SETTINGS_T2;

}
