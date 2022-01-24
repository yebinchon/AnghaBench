#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ state; } ;
typedef  TYPE_1__ tBTA_GATTC_CB ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ BTA_GATTC_STATE_DISABLED ; 
 scalar_t__ BTA_GATTC_STATE_ENABLED ; 
 int /*<<< orphan*/  bta_gattc_cb ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(tBTA_GATTC_CB *p_cb)
{
    FUNC0("bta_gattc_enable");

    if (p_cb->state == BTA_GATTC_STATE_DISABLED) {
        /* initialize control block */
        FUNC1(&bta_gattc_cb, 0, sizeof(tBTA_GATTC_CB));
        p_cb->state = BTA_GATTC_STATE_ENABLED;
    } else {
        FUNC0("GATTC is already enabled");
    }
}