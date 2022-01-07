
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int sco_idx; int colli_timer; int cn_timer; int act_timer; } ;
typedef TYPE_2__ tBTA_AG_SCB ;
typedef size_t UINT8 ;
struct TYPE_9__ {int (* p_cback ) (int ,int *) ;TYPE_1__* scb; } ;
struct TYPE_7__ {scalar_t__ in_use; } ;
typedef int BOOLEAN ;


 int APPL_TRACE_DEBUG (char*,int ) ;
 int BTA_AG_DISABLE_EVT ;
 size_t BTA_AG_NUM_SCB ;
 int BTA_ID_AG ;
 int BTM_INVALID_SCO_INDEX ;
 int FALSE ;
 int TRUE ;
 TYPE_6__ bta_ag_cb ;
 int bta_ag_scb_to_idx (TYPE_2__*) ;
 int bta_sys_is_register (int ) ;
 int bta_sys_stop_timer (int *) ;
 int memset (TYPE_2__*,int ,int) ;
 int stub1 (int ,int *) ;

void bta_ag_scb_dealloc(tBTA_AG_SCB *p_scb)
{
    UINT8 idx;
    BOOLEAN allocated = FALSE;

    APPL_TRACE_DEBUG("bta_ag_scb_dealloc %d", bta_ag_scb_to_idx(p_scb));

    bta_sys_stop_timer(&p_scb->act_timer);

    bta_sys_stop_timer(&p_scb->cn_timer);

    bta_sys_stop_timer(&p_scb->colli_timer);


    memset(p_scb, 0, sizeof(tBTA_AG_SCB));
    p_scb->sco_idx = BTM_INVALID_SCO_INDEX;

    if (!bta_sys_is_register (BTA_ID_AG)) {
        for (idx = 0; idx < BTA_AG_NUM_SCB; idx++) {
            if (bta_ag_cb.scb[idx].in_use) {
                allocated = TRUE;
                break;
            }
        }
        if (!allocated) {
            (*bta_ag_cb.p_cback)(BTA_AG_DISABLE_EVT, ((void*)0));
        }
    }
}
