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
struct TYPE_2__ {scalar_t__ prov_state; int /*<<< orphan*/  pc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TAG ; 
 scalar_t__ WIFI_PROV_STATE_STARTING ; 
 scalar_t__ WIFI_PROV_STATE_STOPPING ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*) ; 
 TYPE_1__* prov_ctx ; 
 int /*<<< orphan*/  prov_ctx_lock ; 

void FUNC4(const char *ep_name)
{
    if (!prov_ctx_lock) {
        FUNC1(TAG, "Provisioning manager not initialized");
        return;
    }

    FUNC0(prov_ctx_lock);
    if (prov_ctx &&
        prov_ctx->prov_state > WIFI_PROV_STATE_STARTING &&
        prov_ctx->prov_state < WIFI_PROV_STATE_STOPPING) {
        FUNC3(prov_ctx->pc, ep_name);
    }
    FUNC2(prov_ctx_lock);
}