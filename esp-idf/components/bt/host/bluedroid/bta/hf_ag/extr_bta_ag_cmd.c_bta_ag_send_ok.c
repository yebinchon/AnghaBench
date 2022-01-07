
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tBTA_AG_SCB ;


 int BTA_AG_RES_OK ;
 int bta_ag_send_result (int *,int ,int *,int ) ;

__attribute__((used)) static void bta_ag_send_ok(tBTA_AG_SCB *p_scb)
{
    bta_ag_send_result(p_scb, BTA_AG_RES_OK, ((void*)0), 0);
}
