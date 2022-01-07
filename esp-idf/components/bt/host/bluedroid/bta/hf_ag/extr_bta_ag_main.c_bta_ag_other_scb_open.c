
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ state; scalar_t__ in_use; } ;
typedef TYPE_1__ tBTA_AG_SCB ;
struct TYPE_5__ {TYPE_1__* scb; } ;
typedef int BOOLEAN ;


 int APPL_TRACE_DEBUG (char*) ;
 int BTA_AG_NUM_SCB ;
 scalar_t__ BTA_AG_OPEN_ST ;
 int FALSE ;
 int TRUE ;
 TYPE_3__ bta_ag_cb ;

BOOLEAN bta_ag_other_scb_open(tBTA_AG_SCB *p_curr_scb)
{
    tBTA_AG_SCB *p_scb = &bta_ag_cb.scb[0];

    for (int i = 0; i < BTA_AG_NUM_SCB; i++, p_scb++) {
        if (p_scb->in_use && p_scb != p_curr_scb && p_scb->state == BTA_AG_OPEN_ST) {
            return TRUE;
        }
    }

    APPL_TRACE_DEBUG("No other ag scb open");
    return FALSE;
}
