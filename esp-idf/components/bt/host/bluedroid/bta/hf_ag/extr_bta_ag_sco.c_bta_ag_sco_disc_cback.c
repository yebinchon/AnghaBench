
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int tBTM_STATUS ;
typedef scalar_t__ UINT16 ;
struct TYPE_9__ {scalar_t__ state; TYPE_5__* p_curr_scb; } ;
struct TYPE_12__ {TYPE_2__ sco; TYPE_1__* scb; } ;
struct TYPE_11__ {scalar_t__ sco_idx; scalar_t__ inuse_codec; scalar_t__ codec_msbc_settings; int codec_fallback; scalar_t__ in_use; } ;
struct TYPE_10__ {scalar_t__ layer_specific; int event; } ;
struct TYPE_8__ {scalar_t__ state; scalar_t__ sco_idx; scalar_t__ in_use; } ;
typedef TYPE_3__ BT_HDR ;


 int APPL_TRACE_DEBUG (char*,...) ;
 scalar_t__ BTA_AG_CODEC_MSBC ;
 scalar_t__ BTA_AG_CODEC_NONE ;
 int BTA_AG_SCO_CLOSE_EVT ;
 scalar_t__ BTA_AG_SCO_MSBC_SETTINGS_T1 ;
 scalar_t__ BTA_AG_SCO_MSBC_SETTINGS_T2 ;
 scalar_t__ BTA_AG_SCO_SHUTDOWN_ST ;
 int BTM_ConfigScoPath (int ,int *,int *,int ) ;
 int BTM_INVALID_SCO_INDEX ;
 int BTM_SCO_ROUTE_PCM ;
 int BTM_VOICE_SETTING_CVSD ;
 int BTM_WriteVoiceSettings (int ) ;
 int TRUE ;
 TYPE_7__ bta_ag_cb ;
 scalar_t__ bta_ag_scb_to_idx (TYPE_5__*) ;
 int bta_ag_sco_co_close () ;
 scalar_t__ bta_ag_sco_is_opening (TYPE_5__*) ;
 int bta_sys_sendmsg (TYPE_3__*) ;
 scalar_t__ osi_malloc (int) ;

__attribute__((used)) static void bta_ag_sco_disc_cback(UINT16 sco_idx)
{
    BT_HDR *p_buf;
    UINT16 handle = 0;

    APPL_TRACE_DEBUG ("bta_ag_sco_disc_cback(): sco_idx: 0x%x  p_cur_scb: 0x%08x  sco.state: %d", (unsigned int)sco_idx, (unsigned int)bta_ag_cb.sco.p_curr_scb, (unsigned int)bta_ag_cb.sco.state);

    APPL_TRACE_DEBUG ("bta_ag_sco_disc_cback(): scb[0] addr: 0x%08x  in_use: %u  sco_idx: 0x%x  sco state: %u",
                       (unsigned int) &bta_ag_cb.scb[0], (unsigned int)bta_ag_cb.scb[0].in_use, (unsigned int)bta_ag_cb.scb[0].sco_idx, (unsigned int)bta_ag_cb.scb[0].state);
    APPL_TRACE_DEBUG ("bta_ag_sco_disc_cback(): scb[1] addr: 0x%08x  in_use: %u  sco_idx: 0x%x  sco state: %u",
                       (unsigned int) &bta_ag_cb.scb[1], (unsigned int) bta_ag_cb.scb[1].in_use, (unsigned int) bta_ag_cb.scb[1].sco_idx, (unsigned int) bta_ag_cb.scb[1].state);


    if (bta_ag_cb.sco.p_curr_scb != ((void*)0) && bta_ag_cb.sco.p_curr_scb->in_use)
    {

        if (bta_ag_cb.sco.p_curr_scb->sco_idx != sco_idx)
        {
            if (bta_ag_cb.sco.p_curr_scb->sco_idx != 0xFFFF)
                return;
        }
        handle = bta_ag_scb_to_idx(bta_ag_cb.sco.p_curr_scb);
    }

    if (handle != 0)
    {

        tBTM_STATUS status = BTM_ConfigScoPath(BTM_SCO_ROUTE_PCM, ((void*)0), ((void*)0), TRUE);
        APPL_TRACE_DEBUG("bta_ag_sco_disc_cback sco close config status = %d", status);

        bta_ag_sco_co_close();




        if(bta_ag_cb.sco.p_curr_scb->inuse_codec == BTA_AG_CODEC_MSBC)
        {

            BTM_WriteVoiceSettings (BTM_VOICE_SETTING_CVSD);



            if (bta_ag_sco_is_opening (bta_ag_cb.sco.p_curr_scb))
            {
                if (bta_ag_cb.sco.p_curr_scb->codec_msbc_settings == BTA_AG_SCO_MSBC_SETTINGS_T2)
                {
                     APPL_TRACE_DEBUG("Fallback to mSBC T1 settings");
                     bta_ag_cb.sco.p_curr_scb->codec_msbc_settings = BTA_AG_SCO_MSBC_SETTINGS_T1;
                }
                else
                {
                    APPL_TRACE_DEBUG("Fallback to CVSD settings");
                    bta_ag_cb.sco.p_curr_scb->codec_fallback = TRUE;
                }
            }
        }

        bta_ag_cb.sco.p_curr_scb->inuse_codec = BTA_AG_CODEC_NONE;


        if ((p_buf = (BT_HDR *) osi_malloc(sizeof(BT_HDR))) != ((void*)0))
        {
            p_buf->event = BTA_AG_SCO_CLOSE_EVT;
            p_buf->layer_specific = handle;
            bta_sys_sendmsg(p_buf);
        }
    }

    else
    {
        APPL_TRACE_DEBUG("no scb for ag_sco_disc_cback");


        if (bta_ag_cb.sco.p_curr_scb != ((void*)0))
        {
            bta_ag_cb.sco.p_curr_scb->sco_idx = BTM_INVALID_SCO_INDEX;
            bta_ag_cb.sco.p_curr_scb = ((void*)0);
            bta_ag_cb.sco.state = BTA_AG_SCO_SHUTDOWN_ST;
        }
    }
}
