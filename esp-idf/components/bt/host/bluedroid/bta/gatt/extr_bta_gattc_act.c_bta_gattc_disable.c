
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ state; TYPE_5__* cl_rcb; } ;
typedef TYPE_1__ tBTA_GATTC_CB ;
typedef size_t UINT8 ;
struct TYPE_7__ {int client_if; scalar_t__ in_use; } ;


 int APPL_TRACE_DEBUG (char*) ;
 int APPL_TRACE_ERROR (char*) ;
 size_t BTA_GATTC_CL_MAX ;
 scalar_t__ BTA_GATTC_STATE_DISABLED ;
 scalar_t__ BTA_GATTC_STATE_DISABLING ;
 scalar_t__ BTA_GATTC_STATE_ENABLED ;
 int bta_gattc_deregister (TYPE_1__*,TYPE_5__*) ;
 int bta_hh_le_is_hh_gatt_if (int ) ;
 int memset (TYPE_1__*,int ,int) ;

void bta_gattc_disable(tBTA_GATTC_CB *p_cb)
{
    UINT8 i;

    APPL_TRACE_DEBUG("bta_gattc_disable");

    if (p_cb->state != BTA_GATTC_STATE_ENABLED) {
        APPL_TRACE_ERROR("not enabled or disable in pogress");
        return;
    }

    for (i = 0; i < BTA_GATTC_CL_MAX; i ++) {
        if (p_cb->cl_rcb[i].in_use) {
            p_cb->state = BTA_GATTC_STATE_DISABLING;





                bta_gattc_deregister(p_cb, &p_cb->cl_rcb[i]);



        }
    }


    if (p_cb->state != BTA_GATTC_STATE_DISABLING) {
        p_cb->state = BTA_GATTC_STATE_DISABLED;
        memset(p_cb, 0, sizeof(tBTA_GATTC_CB));
    }
}
