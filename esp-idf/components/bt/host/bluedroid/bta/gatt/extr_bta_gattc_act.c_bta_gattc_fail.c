
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tBTA_GATTC_DATA ;
struct TYPE_3__ {scalar_t__ status; int state; } ;
typedef TYPE_1__ tBTA_GATTC_CLCB ;


 int APPL_TRACE_ERROR (char*,int ) ;
 scalar_t__ BTA_GATT_OK ;
 int UNUSED (int *) ;

void bta_gattc_fail(tBTA_GATTC_CLCB *p_clcb, tBTA_GATTC_DATA *p_data)
{
    UNUSED(p_data);

    if (p_clcb->status == BTA_GATT_OK) {
        APPL_TRACE_ERROR("operation not supported at current state [%d]", p_clcb->state);
    }
}
