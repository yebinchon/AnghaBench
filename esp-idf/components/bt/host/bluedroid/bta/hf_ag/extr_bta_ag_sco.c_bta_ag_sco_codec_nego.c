
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int codec_updated; } ;
typedef TYPE_1__ tBTA_AG_SCB ;
typedef scalar_t__ BOOLEAN ;


 int BTA_AG_SCO_CLOSE_E ;
 int BTA_AG_SCO_CN_DONE_E ;
 int FALSE ;
 scalar_t__ TRUE ;
 int bta_ag_sco_event (TYPE_1__*,int ) ;

void bta_ag_sco_codec_nego(tBTA_AG_SCB *p_scb, BOOLEAN result)
{
    if(result == TRUE)
    {

        p_scb->codec_updated = FALSE;

        bta_ag_sco_event(p_scb, BTA_AG_SCO_CN_DONE_E);
    }
    else
        bta_ag_sco_event(p_scb, BTA_AG_SCO_CLOSE_E);
}
