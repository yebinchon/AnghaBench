
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ in_use; } ;
typedef TYPE_1__ tBTA_AG_SCB ;
typedef int tBTA_AG_DATA ;
struct TYPE_5__ {int (* p_cback ) (int ,int *) ;TYPE_1__* scb; } ;
typedef int BOOLEAN ;


 int APPL_TRACE_ERROR (char*) ;
 int BTA_AG_API_DEREGISTER_EVT ;
 int BTA_AG_DISABLE_EVT ;
 int BTA_AG_NUM_SCB ;
 int BTA_ID_AG ;
 int FALSE ;
 int TRUE ;
 TYPE_3__ bta_ag_cb ;
 int bta_ag_sm_execute (TYPE_1__*,int ,int *) ;
 int bta_sys_collision_register (int ,int *) ;
 int bta_sys_deregister (int ) ;
 int bta_sys_is_register (int ) ;
 int stub1 (int ,int *) ;

__attribute__((used)) static void bta_ag_api_disable(tBTA_AG_DATA *p_data)
{

    tBTA_AG_SCB *p_scb = &bta_ag_cb.scb[0];
    BOOLEAN do_dereg = FALSE;
    int i;

    if (!bta_sys_is_register (BTA_ID_AG)) {
        APPL_TRACE_ERROR("BTA AG is already disabled, ignoring ...");
        return;
    }

    bta_sys_deregister(BTA_ID_AG);

    for (i = 0; i < BTA_AG_NUM_SCB; i++, p_scb++) {
        if (p_scb->in_use) {
            bta_ag_sm_execute(p_scb, BTA_AG_API_DEREGISTER_EVT, p_data);
            do_dereg = TRUE;
        }
    }

    if (!do_dereg) {

        (*bta_ag_cb.p_cback)(BTA_AG_DISABLE_EVT, ((void*)0));
    }
    bta_sys_collision_register (BTA_ID_AG, ((void*)0));
}
