
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int call_ind; } ;
typedef TYPE_1__ tBTA_AG_SCB ;
typedef size_t tBTA_AG_RES ;
typedef int UINT8 ;


 int BTA_AG_CALL_ACTIVE ;
 int BTA_AG_CALL_INACTIVE ;
 size_t BTA_AG_END_CALL_RES ;
 int BTA_AG_IND_CALL ;
 int BTA_AG_IND_CALLSETUP ;
 size_t BTA_AG_IN_CALL_CONN_RES ;
 size_t BTA_AG_IN_CALL_HELD_RES ;
 size_t BTA_AG_OUT_CALL_CONN_RES ;
 int FALSE ;
 int * bta_ag_callsetup_ind_tbl ;
 int bta_ag_send_ind (TYPE_1__*,int ,int ,int ) ;

void bta_ag_send_call_inds(tBTA_AG_SCB *p_scb, tBTA_AG_RES result)
{
    UINT8 call = p_scb->call_ind;
    UINT8 callsetup;

    callsetup = bta_ag_callsetup_ind_tbl[result];

    if (result == BTA_AG_END_CALL_RES) {
        call = BTA_AG_CALL_INACTIVE;
    } else if (result == BTA_AG_IN_CALL_CONN_RES || result == BTA_AG_OUT_CALL_CONN_RES
             || result == BTA_AG_IN_CALL_HELD_RES) {
        call = BTA_AG_CALL_ACTIVE;
    } else {
        call = p_scb->call_ind;
    }

    bta_ag_send_ind(p_scb, BTA_AG_IND_CALL, call, FALSE);
    bta_ag_send_ind(p_scb, BTA_AG_IND_CALLSETUP, callsetup, FALSE);
}
