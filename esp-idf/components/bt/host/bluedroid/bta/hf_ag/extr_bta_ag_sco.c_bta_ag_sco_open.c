
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tBTA_AG_SCB ;
typedef int tBTA_AG_DATA ;
typedef int UINT8 ;
struct TYPE_3__ {int * p_curr_scb; } ;
struct TYPE_4__ {TYPE_1__ sco; } ;


 int BTA_AG_SCO_OPEN_E ;
 int BTA_AG_SCO_XFER_E ;
 int UNUSED (int *) ;
 TYPE_2__ bta_ag_cb ;
 int bta_ag_sco_event (int *,int ) ;

void bta_ag_sco_open(tBTA_AG_SCB *p_scb, tBTA_AG_DATA *p_data)
{
    UINT8 event;
    UNUSED(p_data);


    if (bta_ag_cb.sco.p_curr_scb != ((void*)0) && bta_ag_cb.sco.p_curr_scb != p_scb)
    {
        event = BTA_AG_SCO_XFER_E;
    }

    else
    {
        event = BTA_AG_SCO_OPEN_E;
    }

    bta_ag_sco_event(p_scb, event);
}
