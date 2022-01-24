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
struct TYPE_2__ {scalar_t__ prov_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TAG ; 
 scalar_t__ WIFI_PROV_STATE_IDLE ; 
 int portTICK_PERIOD_MS ; 
 TYPE_1__* prov_ctx ; 
 int /*<<< orphan*/  prov_ctx_lock ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

void FUNC4(void)
{
    if (!prov_ctx_lock) {
        FUNC1(TAG, "Provisioning manager not initialized");
        return;
    }

    while (1) {
        FUNC0(prov_ctx_lock);
        if (prov_ctx &&
            prov_ctx->prov_state != WIFI_PROV_STATE_IDLE) {
            FUNC2(prov_ctx_lock);
            FUNC3(1000 / portTICK_PERIOD_MS);
            continue;
        }
        break;
    }
    FUNC2(prov_ctx_lock);
}