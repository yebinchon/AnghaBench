
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int p_cback; scalar_t__ param; } ;
struct TYPE_7__ {int codec_msbc_settings; TYPE_1__ act_timer; int codec_updated; int sco_idx; scalar_t__ in_use; } ;
typedef TYPE_2__ tBTA_AG_SCB ;
typedef scalar_t__ UINT32 ;
struct TYPE_8__ {TYPE_2__* scb; } ;


 int APPL_TRACE_DEBUG (char*,int ) ;
 int APPL_TRACE_WARNING (char*) ;
 int BTA_AG_NUM_SCB ;
 int BTA_AG_SCO_MSBC_SETTINGS_T2 ;
 int BTM_INVALID_SCO_INDEX ;
 int FALSE ;
 scalar_t__ TRUE ;
 TYPE_5__ bta_ag_cb ;
 int bta_ag_scb_to_idx (TYPE_2__*) ;
 int bta_ag_timer_cback ;

__attribute__((used)) static tBTA_AG_SCB *bta_ag_scb_alloc(void)
{
    tBTA_AG_SCB *p_scb = &bta_ag_cb.scb[0];
    int i;

    for (i = 0; i < BTA_AG_NUM_SCB; i++, p_scb++) {
        if (!p_scb->in_use) {

            p_scb->in_use = TRUE;
            p_scb->sco_idx = BTM_INVALID_SCO_INDEX;

            p_scb->codec_updated = FALSE;


            p_scb->act_timer.param = (UINT32) p_scb;
            p_scb->act_timer.p_cback = bta_ag_timer_cback;


            p_scb->codec_msbc_settings = BTA_AG_SCO_MSBC_SETTINGS_T2;

            APPL_TRACE_DEBUG("bta_ag_scb_alloc %d", bta_ag_scb_to_idx(p_scb));
            break;
        }
    }

    if (i == BTA_AG_NUM_SCB) {
        p_scb = ((void*)0);
        APPL_TRACE_WARNING("Out of ag scbs");
    }
    return p_scb;
}
