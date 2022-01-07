
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tBTA_AG_SCB ;
typedef int tBTA_AG_DATA ;


 int BTA_AG_FAIL_RESOURCES ;
 int bta_ag_cback_open (int *,int *,int ) ;

void bta_ag_open_fail(tBTA_AG_SCB *p_scb, tBTA_AG_DATA *p_data)
{

    bta_ag_cback_open(p_scb, p_data, BTA_AG_FAIL_RESOURCES);
}
