
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ state; } ;
typedef TYPE_1__ tBTA_GATTC_CB ;


 int APPL_TRACE_DEBUG (char*) ;
 scalar_t__ BTA_GATTC_STATE_DISABLED ;
 scalar_t__ BTA_GATTC_STATE_ENABLED ;
 int bta_gattc_cb ;
 int memset (int *,int ,int) ;

__attribute__((used)) static void bta_gattc_enable(tBTA_GATTC_CB *p_cb)
{
    APPL_TRACE_DEBUG("bta_gattc_enable");

    if (p_cb->state == BTA_GATTC_STATE_DISABLED) {

        memset(&bta_gattc_cb, 0, sizeof(tBTA_GATTC_CB));
        p_cb->state = BTA_GATTC_STATE_ENABLED;
    } else {
        APPL_TRACE_DEBUG("GATTC is already enabled");
    }
}
