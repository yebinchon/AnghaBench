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
struct TYPE_2__ {int /*<<< orphan*/  scanning; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TAG ; 
 TYPE_1__* prov_ctx ; 
 int /*<<< orphan*/  prov_ctx_lock ; 

bool FUNC3(void)
{
    bool scan_finished = true;
    if (!prov_ctx_lock) {
        FUNC1(TAG, "Provisioning manager not initialized");
        return scan_finished;
    }

    FUNC0(prov_ctx_lock);
    if (!prov_ctx) {
        FUNC1(TAG, "Provisioning manager not initialized");
        FUNC2(prov_ctx_lock);
        return scan_finished;
    }

    scan_finished = !prov_ctx->scanning;
    FUNC2(prov_ctx_lock);
    return scan_finished;
}