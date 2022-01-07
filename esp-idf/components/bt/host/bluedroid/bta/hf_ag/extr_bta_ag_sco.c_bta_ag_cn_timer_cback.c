
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tBTA_AG_SCB ;
struct TYPE_3__ {scalar_t__ param; } ;
typedef TYPE_1__ TIMER_LIST_ENT ;


 int BTA_AG_AUDIO_CLOSE_EVT ;
 int FALSE ;
 int bta_ag_cback_sco (int *,int ) ;
 int bta_ag_sco_codec_nego (int *,int ) ;

__attribute__((used)) static void bta_ag_cn_timer_cback (TIMER_LIST_ENT *p_tle)
{
    tBTA_AG_SCB *p_scb;

    if (p_tle)
    {
        p_scb = (tBTA_AG_SCB *)p_tle->param;

        if (p_scb)
        {

            bta_ag_sco_codec_nego(p_scb, FALSE);


            bta_ag_cback_sco(p_scb, BTA_AG_AUDIO_CLOSE_EVT);
        }
    }
}
