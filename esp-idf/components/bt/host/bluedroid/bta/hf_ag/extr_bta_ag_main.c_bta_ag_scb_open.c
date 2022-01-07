
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ state; scalar_t__ in_use; } ;
typedef TYPE_1__ tBTA_AG_SCB ;
typedef int BOOLEAN ;


 scalar_t__ BTA_AG_OPEN_ST ;
 int FALSE ;
 int TRUE ;

BOOLEAN bta_ag_scb_open(tBTA_AG_SCB *p_curr_scb)
{
    if (p_curr_scb && p_curr_scb->in_use && p_curr_scb->state == BTA_AG_OPEN_ST) {
        return TRUE;
    }
    return FALSE;
}
