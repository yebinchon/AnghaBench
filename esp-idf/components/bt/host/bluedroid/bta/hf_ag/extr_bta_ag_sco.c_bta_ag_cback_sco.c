
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int app_id; } ;
typedef TYPE_1__ tBTA_AG_SCB ;
struct TYPE_7__ {int app_id; int handle; } ;
typedef TYPE_2__ tBTA_AG_HDR ;
typedef int tBTA_AG ;
typedef int UINT8 ;
struct TYPE_8__ {int (* p_cback ) (int ,int *) ;} ;


 TYPE_5__ bta_ag_cb ;
 int bta_ag_scb_to_idx (TYPE_1__*) ;
 int stub1 (int ,int *) ;

__attribute__((used)) static void bta_ag_cback_sco(tBTA_AG_SCB *p_scb, UINT8 event)
{
    tBTA_AG_HDR sco;

    sco.handle = bta_ag_scb_to_idx(p_scb);
    sco.app_id = p_scb->app_id;


    (*bta_ag_cb.p_cback)(event, (tBTA_AG *) &sco);
}
