
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tBTA_AG_SCB ;
typedef int tBTA_AG_DATA ;


 int BTA_AG_SCO_LISTEN_E ;
 int UNUSED (int *) ;
 int bta_ag_sco_event (int *,int ) ;

void bta_ag_sco_listen(tBTA_AG_SCB *p_scb, tBTA_AG_DATA *p_data)
{
    UNUSED(p_data);
    bta_ag_sco_event(p_scb, BTA_AG_SCO_LISTEN_E);
}
