#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint16_t ;
struct TYPE_2__ {int /*<<< orphan*/ * ap_list_sorted; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 size_t MAX_SCAN_RESULTS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TAG ; 
 TYPE_1__* prov_ctx ; 
 int /*<<< orphan*/  prov_ctx_lock ; 

uint16_t FUNC3(void)
{
    uint16_t rval = 0;
    if (!prov_ctx_lock) {
        FUNC1(TAG, "Provisioning manager not initialized");
        return rval;
    }

    FUNC0(prov_ctx_lock);
    if (!prov_ctx) {
        FUNC1(TAG, "Provisioning manager not initialized");
        FUNC2(prov_ctx_lock);
        return rval;
    }

    while (rval < MAX_SCAN_RESULTS) {
        if (!prov_ctx->ap_list_sorted[rval]) {
            break;
        }
        rval++;
    }
    FUNC2(prov_ctx_lock);
    return rval;
}