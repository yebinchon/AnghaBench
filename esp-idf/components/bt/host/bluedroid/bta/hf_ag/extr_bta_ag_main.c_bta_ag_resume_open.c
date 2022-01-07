
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ state; } ;
typedef TYPE_1__ tBTA_AG_SCB ;


 int APPL_TRACE_DEBUG (char*,int ) ;
 int APPL_TRACE_ERROR (char*) ;
 scalar_t__ BTA_AG_INIT_ST ;
 scalar_t__ BTA_AG_OPENING_ST ;
 int bta_ag_scb_to_idx (TYPE_1__*) ;
 int bta_ag_start_open (TYPE_1__*,int *) ;

void bta_ag_resume_open (tBTA_AG_SCB *p_scb)
{
    if (p_scb) {
        APPL_TRACE_DEBUG ("bta_ag_resume_open, Handle(%d)", bta_ag_scb_to_idx(p_scb));

        if (p_scb->state == BTA_AG_INIT_ST) {
            p_scb->state = BTA_AG_OPENING_ST;
            bta_ag_start_open (p_scb, ((void*)0));
        }
    } else {
        APPL_TRACE_ERROR ("bta_ag_resume_open, Null p_scb");
    }
}
