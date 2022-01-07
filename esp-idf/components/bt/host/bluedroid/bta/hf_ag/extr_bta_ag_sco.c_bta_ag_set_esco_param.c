
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tBTM_ESCO_PARAMS ;
struct TYPE_3__ {int params; scalar_t__ param_updated; } ;
struct TYPE_4__ {TYPE_1__ sco; } ;
typedef scalar_t__ BOOLEAN ;


 int APPL_TRACE_DEBUG (char*) ;
 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 TYPE_2__ bta_ag_cb ;

void bta_ag_set_esco_param(BOOLEAN set_reset, tBTM_ESCO_PARAMS *param)
{
    if(set_reset == FALSE)
    {
        bta_ag_cb.sco.param_updated = FALSE;
        APPL_TRACE_DEBUG("bta_ag_set_esco_param : Resetting ESCO parameters to default");
    }
    else
    {
        bta_ag_cb.sco.param_updated = TRUE;
        bta_ag_cb.sco.params = *param;
        APPL_TRACE_DEBUG("bta_ag_set_esco_param : Setting ESCO parameters");
    }
}
