
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tBTA_GATTC_SERV ;
struct TYPE_5__ {TYPE_1__* clcb; } ;
typedef TYPE_2__ tBTA_GATTC_CB ;
typedef size_t UINT8 ;
struct TYPE_4__ {int state; int status; int * p_srcb; } ;


 size_t BTA_GATTC_CLCB_MAX ;
 int BTA_GATTC_DISCOVER_ST ;
 int BTA_GATT_OK ;
 TYPE_2__ bta_gattc_cb ;

void bta_gattc_set_discover_st(tBTA_GATTC_SERV *p_srcb)
{
    tBTA_GATTC_CB *p_cb = &bta_gattc_cb;
    UINT8 i;

    for (i = 0; i < BTA_GATTC_CLCB_MAX; i ++) {
        if (p_cb->clcb[i].p_srcb == p_srcb) {
            p_cb->clcb[i].status = BTA_GATT_OK;
            p_cb->clcb[i].state = BTA_GATTC_DISCOVER_ST;
        }
    }
}
