
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int reg_services; int dealloc; } ;
typedef TYPE_1__ tBTA_AG_SCB ;
typedef int tBTA_AG_DATA ;


 int TRUE ;
 int bta_ag_close_servers (TYPE_1__*,int ) ;
 int bta_ag_del_records (TYPE_1__*,int *) ;
 int bta_ag_scb_dealloc (TYPE_1__*) ;

void bta_ag_deregister(tBTA_AG_SCB *p_scb, tBTA_AG_DATA *p_data)
{

    p_scb->dealloc = TRUE;

    bta_ag_del_records(p_scb, p_data);

    bta_ag_close_servers(p_scb, p_scb->reg_services);

    bta_ag_scb_dealloc(p_scb);
}
