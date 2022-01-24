#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_5__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ state; TYPE_5__* cl_rcb; } ;
typedef  TYPE_1__ tBTA_GATTC_CB ;
typedef  size_t UINT8 ;
struct TYPE_7__ {int /*<<< orphan*/  client_if; scalar_t__ in_use; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 size_t BTA_GATTC_CL_MAX ; 
 scalar_t__ BTA_GATTC_STATE_DISABLED ; 
 scalar_t__ BTA_GATTC_STATE_DISABLING ; 
 scalar_t__ BTA_GATTC_STATE_ENABLED ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

void FUNC5(tBTA_GATTC_CB *p_cb)
{
    UINT8           i;

    FUNC0("bta_gattc_disable");

    if (p_cb->state != BTA_GATTC_STATE_ENABLED) {
        FUNC1("not enabled or disable in pogress");
        return;
    }

    for (i = 0; i < BTA_GATTC_CL_MAX; i ++) {
        if (p_cb->cl_rcb[i].in_use) {
            p_cb->state = BTA_GATTC_STATE_DISABLING;
            /* don't deregister HH GATT IF */
            /* HH GATT IF will be deregistered by bta_hh_le_deregister when disable HH */
#if (defined BTA_HH_LE_INCLUDED && BTA_HH_LE_INCLUDED == TRUE)
            if (!bta_hh_le_is_hh_gatt_if(p_cb->cl_rcb[i].client_if)) {
#endif
                FUNC2(p_cb, &p_cb->cl_rcb[i]);
#if (defined BTA_HH_LE_INCLUDED && BTA_HH_LE_INCLUDED == TRUE)
            }
#endif
        }
    }

    /* no registered apps, indicate disable completed */
    if (p_cb->state != BTA_GATTC_STATE_DISABLING) {
        p_cb->state = BTA_GATTC_STATE_DISABLED;
        FUNC4(p_cb, 0, sizeof(tBTA_GATTC_CB));
    }
}