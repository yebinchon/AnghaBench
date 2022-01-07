
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int tBTA_AG_SCB ;
struct TYPE_8__ {int status; } ;
typedef TYPE_2__ tBTA_AG_REGISTER ;
struct TYPE_7__ {int event; } ;
struct TYPE_9__ {TYPE_1__ hdr; } ;
typedef TYPE_3__ tBTA_AG_DATA ;
typedef int tBTA_AG ;
struct TYPE_10__ {int (* p_cback ) (int ,int *) ;} ;


 int APPL_TRACE_DEBUG (char*,unsigned int) ;
 int BTA_AG_FAIL_RESOURCES ;
 int BTA_AG_REGISTER_EVT ;
 TYPE_5__ bta_ag_cb ;
 int * bta_ag_scb_alloc () ;
 int bta_ag_sm_execute (int *,int ,TYPE_3__*) ;
 int stub1 (int ,int *) ;

__attribute__((used)) static void bta_ag_api_register(tBTA_AG_DATA *p_data)
{
    tBTA_AG_SCB *p_scb;
    tBTA_AG_REGISTER reg;


    if ((p_scb = bta_ag_scb_alloc()) != ((void*)0)) {
        APPL_TRACE_DEBUG("bta_ag_api_register: p_scb 0x%08x ", (unsigned int)p_scb);
        bta_ag_sm_execute(p_scb, p_data->hdr.event, p_data);
    } else {
        reg.status = BTA_AG_FAIL_RESOURCES;
        (*bta_ag_cb.p_cback)(BTA_AG_REGISTER_EVT, (tBTA_AG *) &reg);
    }
}
