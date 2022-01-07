
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int reg_services; } ;
typedef TYPE_1__ tBTA_AG_SCB ;
typedef int tBTA_AG_DATA ;


 int BTA_AG_FAIL_SDP ;
 int UNUSED (int *) ;
 int bta_ag_cback_open (TYPE_1__*,int *,int ) ;
 int bta_ag_start_servers (TYPE_1__*,int ) ;

void bta_ag_disc_fail(tBTA_AG_SCB *p_scb, tBTA_AG_DATA *p_data)
{
    UNUSED(p_data);

    bta_ag_start_servers(p_scb, p_scb->reg_services);


    bta_ag_cback_open(p_scb, ((void*)0), BTA_AG_FAIL_SDP);
}
