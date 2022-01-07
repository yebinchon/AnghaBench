
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tBTA_GATT_STATUS ;
typedef int tBTA_GATTC_SERV ;
struct TYPE_4__ {TYPE_2__* clcb; } ;
typedef TYPE_1__ tBTA_GATTC_CB ;
typedef size_t UINT8 ;
struct TYPE_5__ {int status; int * p_srcb; } ;


 size_t BTA_GATTC_CLCB_MAX ;
 int BTA_GATTC_DISCOVER_CMPL_EVT ;
 TYPE_1__ bta_gattc_cb ;
 int bta_gattc_sm_execute (TYPE_2__*,int ,int *) ;

void bta_gattc_reset_discover_st(tBTA_GATTC_SERV *p_srcb, tBTA_GATT_STATUS status)
{
    tBTA_GATTC_CB *p_cb = &bta_gattc_cb;
    UINT8 i;

    for (i = 0; i < BTA_GATTC_CLCB_MAX; i ++) {
        if (p_cb->clcb[i].p_srcb == p_srcb) {
            p_cb->clcb[i].status = status;
            bta_gattc_sm_execute(&p_cb->clcb[i], BTA_GATTC_DISCOVER_CMPL_EVT, ((void*)0));
        }
    }
}
