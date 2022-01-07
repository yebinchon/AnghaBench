
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tBTA_AG_SCB ;
typedef scalar_t__ UINT16 ;
struct TYPE_2__ {int * scb; } ;


 TYPE_1__ bta_ag_cb ;

UINT16 bta_ag_scb_to_idx(tBTA_AG_SCB *p_scb)
{

    return ((UINT16) (p_scb - bta_ag_cb.scb)) + 1;
}
