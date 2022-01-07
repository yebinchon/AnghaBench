
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ inband_enabled; } ;
typedef TYPE_1__ tBTA_AG_SCB ;
typedef int BOOLEAN ;


 int FALSE ;
 int TRUE ;
 int bta_ag_other_scb_open (TYPE_1__*) ;

BOOLEAN bta_ag_inband_enabled(tBTA_AG_SCB *p_scb)
{

    if (p_scb->inband_enabled && !bta_ag_other_scb_open(p_scb)) {
        return TRUE;
    } else {
        return FALSE;
    }
}
