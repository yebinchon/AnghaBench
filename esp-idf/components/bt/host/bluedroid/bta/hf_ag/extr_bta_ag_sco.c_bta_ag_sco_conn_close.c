
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_8__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ call_ind; scalar_t__ callsetup_ind; scalar_t__ post_sco; scalar_t__ retry_with_sco_only; int codec_msbc_settings; int peer_addr; int app_id; int inuse_codec; scalar_t__ svc_conn; scalar_t__ codec_fallback; int sco_idx; } ;
typedef TYPE_2__ tBTA_AG_SCB ;
typedef int tBTA_AG_DATA ;
typedef int sco_state_t ;
typedef int UINT16 ;
struct TYPE_10__ {scalar_t__ p_xfer_scb; int * p_curr_scb; } ;
struct TYPE_12__ {TYPE_1__ sco; } ;


 int BTA_AG_AUDIO_CLOSE_EVT ;
 scalar_t__ BTA_AG_CALLSETUP_NONE ;
 scalar_t__ BTA_AG_CALL_INACTIVE ;
 scalar_t__ BTA_AG_POST_SCO_CALL_END ;
 int BTA_AG_SCO_CONN_CLOSE_E ;
 int BTA_AG_SCO_MSBC_SETTINGS_T2 ;
 int BTA_AG_SCO_REOPEN_E ;
 int BTA_ID_AG ;
 int BTM_INVALID_SCO_INDEX ;
 scalar_t__ FALSE ;
 int SCO_STATE_OFF ;
 int SCO_STATE_OFF_TRANSFER ;
 int TRUE ;
 int UNUSED (int *) ;
 scalar_t__ bta_ag_attempt_msbc_safe_settings (TYPE_2__*) ;
 TYPE_8__ bta_ag_cb ;
 int bta_ag_cback_sco (TYPE_2__*,int ) ;
 int bta_ag_create_sco (TYPE_2__*,int ) ;
 int bta_ag_scb_to_idx (TYPE_2__*) ;
 int bta_ag_sco_audio_state (int ,int ,int ,...) ;
 int bta_ag_sco_event (TYPE_2__*,int ) ;
 int bta_sys_sco_close (int ,int ,int ) ;
 int bta_sys_sco_unuse (int ,int ,int ) ;

void bta_ag_sco_conn_close(tBTA_AG_SCB *p_scb, tBTA_AG_DATA *p_data)
{
    UINT16 handle = bta_ag_scb_to_idx(p_scb);
    UNUSED(p_data);


    bta_ag_cb.sco.p_curr_scb = ((void*)0);
    p_scb->sco_idx = BTM_INVALID_SCO_INDEX;




    if ((p_scb->codec_fallback && p_scb->svc_conn) ||
         bta_ag_attempt_msbc_safe_settings(p_scb))
    {
        bta_ag_sco_event(p_scb, BTA_AG_SCO_REOPEN_E);
    }
    else if (p_scb->retry_with_sco_only && p_scb->svc_conn)
    {

        bta_ag_create_sco(p_scb, TRUE);
    }
    else
    {
        sco_state_t sco_state = bta_ag_cb.sco.p_xfer_scb ? SCO_STATE_OFF_TRANSFER : SCO_STATE_OFF;


        bta_ag_sco_audio_state(handle, p_scb->app_id, sco_state, p_scb->inuse_codec);




        bta_ag_sco_event(p_scb, BTA_AG_SCO_CONN_CLOSE_E);

        bta_sys_sco_close(BTA_ID_AG, p_scb->app_id, p_scb->peer_addr);



        if(((p_scb->call_ind == BTA_AG_CALL_INACTIVE) && (p_scb->callsetup_ind == BTA_AG_CALLSETUP_NONE))
            || (p_scb->post_sco == BTA_AG_POST_SCO_CALL_END))
        {
            bta_sys_sco_unuse(BTA_ID_AG, p_scb->app_id, p_scb->peer_addr);
        }


        bta_ag_cback_sco(p_scb, BTA_AG_AUDIO_CLOSE_EVT);

        p_scb->codec_msbc_settings = BTA_AG_SCO_MSBC_SETTINGS_T2;

    }
    p_scb->retry_with_sco_only = FALSE;
}
