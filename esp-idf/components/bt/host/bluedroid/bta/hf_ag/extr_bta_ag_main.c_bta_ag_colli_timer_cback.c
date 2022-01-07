
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int colli_tmr_on; } ;
typedef TYPE_1__ tBTA_AG_SCB ;
struct TYPE_6__ {scalar_t__ param; } ;
typedef TYPE_2__ TIMER_LIST_ENT ;


 int APPL_TRACE_DEBUG (char*) ;
 int FALSE ;
 int bta_ag_resume_open (TYPE_1__*) ;

__attribute__((used)) static void bta_ag_colli_timer_cback (TIMER_LIST_ENT *p_tle)
{
    tBTA_AG_SCB *p_scb;

    APPL_TRACE_DEBUG ("bta_ag_colli_timer_cback");
    if (p_tle) {
        p_scb = (tBTA_AG_SCB *)p_tle->param;
        if (p_scb) {
            p_scb->colli_tmr_on = FALSE;


            bta_ag_resume_open (p_scb);
        }
    }
}
