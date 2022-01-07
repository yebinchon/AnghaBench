
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tBTA_AG_SCB ;
typedef size_t UINT16 ;
struct TYPE_2__ {scalar_t__ parse_mode; } ;


 scalar_t__ BTA_AG_PASS_THROUGH ;
 int BTA_AG_PORT_EV_MASK ;
 int PORT_SetDataCallback (size_t,int ) ;
 int PORT_SetEventCallback (size_t,int ) ;
 int PORT_SetEventMask (size_t,int ) ;
 TYPE_1__ bta_ag_cb ;
 int * bta_ag_data_cback_tbl ;
 int * bta_ag_port_cback_tbl ;
 size_t bta_ag_scb_to_idx (int *) ;

void bta_ag_setup_port(tBTA_AG_SCB *p_scb, UINT16 handle)
{
    UINT16 i = bta_ag_scb_to_idx(p_scb) - 1;


    if (bta_ag_cb.parse_mode == BTA_AG_PASS_THROUGH) {
        PORT_SetDataCallback(handle, bta_ag_data_cback_tbl[i]);
    }
    PORT_SetEventMask(handle, BTA_AG_PORT_EV_MASK);
    PORT_SetEventCallback(handle, bta_ag_port_cback_tbl[i]);
}
