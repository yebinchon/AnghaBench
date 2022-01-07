
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ param; int * p_cback; } ;
struct TYPE_10__ {int peer_features; TYPE_3__ cn_timer; int peer_addr; int app_id; scalar_t__ codec_fallback; scalar_t__ codec_updated; } ;
typedef TYPE_2__ tBTA_AG_SCB ;
struct TYPE_9__ {TYPE_2__* p_curr_scb; } ;
struct TYPE_12__ {TYPE_1__ sco; } ;
typedef int TIMER_CBACK ;
typedef scalar_t__ INT32 ;


 int APPL_TRACE_DEBUG (char*) ;
 int BTA_AG_CODEC_NEGO_TIMEOUT ;
 int BTA_AG_PEER_FEAT_CODEC ;
 int BTA_ID_AG ;
 int TRUE ;
 scalar_t__ bta_ag_attempt_msbc_safe_settings (TYPE_2__*) ;
 TYPE_7__ bta_ag_cb ;
 int bta_ag_cn_timer_cback ;
 int bta_ag_sco_codec_nego (TYPE_2__*,int ) ;
 int bta_ag_send_bcs (TYPE_2__*,int *) ;
 int bta_sys_busy (int ,int ,int ) ;
 int bta_sys_start_timer (TYPE_3__*,int ,int ) ;

void bta_ag_codec_negotiate(tBTA_AG_SCB *p_scb)
{
    bta_ag_cb.sco.p_curr_scb = p_scb;

    if ((p_scb->codec_updated || p_scb->codec_fallback ||
        bta_ag_attempt_msbc_safe_settings(p_scb)) &&
       (p_scb->peer_features & BTA_AG_PEER_FEAT_CODEC))
    {

        bta_sys_busy(BTA_ID_AG, p_scb->app_id, p_scb->peer_addr);


        bta_ag_send_bcs(p_scb, ((void*)0));


        p_scb->cn_timer.p_cback = (TIMER_CBACK*)&bta_ag_cn_timer_cback;
        p_scb->cn_timer.param = (INT32)p_scb;
        bta_sys_start_timer(&p_scb->cn_timer, 0, BTA_AG_CODEC_NEGO_TIMEOUT);
    }
    else
    {

        APPL_TRACE_DEBUG("use same codec type as previous SCO connection,skip codec negotiation");
        bta_ag_sco_codec_nego(p_scb, TRUE);
    }
}
