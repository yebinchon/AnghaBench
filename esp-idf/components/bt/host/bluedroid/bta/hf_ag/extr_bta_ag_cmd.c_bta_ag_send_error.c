
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ conn_service; scalar_t__ cmee_enabled; } ;
typedef TYPE_1__ tBTA_AG_SCB ;
typedef int INT16 ;


 scalar_t__ BTA_AG_HFP ;
 int BTA_AG_RES_CMEE ;
 int BTA_AG_RES_ERROR ;
 int bta_ag_send_result (TYPE_1__*,int ,int *,int ) ;

__attribute__((used)) static void bta_ag_send_error(tBTA_AG_SCB *p_scb, INT16 errcode)
{

    if (p_scb->conn_service == BTA_AG_HFP && p_scb->cmee_enabled) {
        bta_ag_send_result(p_scb, BTA_AG_RES_CMEE, ((void*)0), errcode);
    } else {
        bta_ag_send_result(p_scb, BTA_AG_RES_ERROR, ((void*)0), 0);
    }
}
