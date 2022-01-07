
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tBTA_AG_SCB ;
struct TYPE_3__ {scalar_t__ state; int * p_curr_scb; } ;
struct TYPE_4__ {TYPE_1__ sco; } ;
typedef int BOOLEAN ;


 scalar_t__ BTA_AG_SCO_OPENING_ST ;
 TYPE_2__ bta_ag_cb ;

BOOLEAN bta_ag_sco_is_opening(tBTA_AG_SCB *p_scb)
{

    return (((bta_ag_cb.sco.state == BTA_AG_SCO_OPENING_ST) ||
            (bta_ag_cb.sco.state == BTA_AG_SCO_OPENING_ST)) &&
            (bta_ag_cb.sco.p_curr_scb == p_scb));




}
