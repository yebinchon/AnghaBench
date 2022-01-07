
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ sco_idx; } ;
typedef TYPE_2__ tBTA_AG_SCB ;
typedef int tBTA_AG_DATA ;
struct TYPE_6__ {scalar_t__ state; } ;
struct TYPE_8__ {TYPE_1__ sco; } ;


 int APPL_TRACE_DEBUG (char*,scalar_t__) ;
 int BTA_AG_SCO_CLOSE_E ;
 scalar_t__ BTA_AG_SCO_CODEC_ST ;
 scalar_t__ BTM_INVALID_SCO_INDEX ;
 int UNUSED (int *) ;
 TYPE_5__ bta_ag_cb ;
 int bta_ag_sco_event (TYPE_2__*,int ) ;

void bta_ag_sco_close(tBTA_AG_SCB *p_scb, tBTA_AG_DATA *p_data)
{
    UNUSED(p_data);




    if ((p_scb->sco_idx != BTM_INVALID_SCO_INDEX) || (bta_ag_cb.sco.state == BTA_AG_SCO_CODEC_ST))



    {
        APPL_TRACE_DEBUG("bta_ag_sco_close: sco_inx = %d", p_scb->sco_idx);
        bta_ag_sco_event(p_scb, BTA_AG_SCO_CLOSE_E);
    }
}
