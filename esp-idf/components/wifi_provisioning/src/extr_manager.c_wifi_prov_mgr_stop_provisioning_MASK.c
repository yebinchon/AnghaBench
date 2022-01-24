#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  prov_ctx_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(void)
{
    if (!prov_ctx_lock) {
        FUNC1(TAG, "Provisioning manager not initialized");
        return;
    }

    FUNC0(prov_ctx_lock);

    /* Launches task for stopping the provisioning service. This will do one of these:
     * 1) start a task for stopping the provisioning service (returns true)
     * 2) if service was already in the process of termination, this will
     *    wait till the service is stopped (returns false)
     * 3) if service was not running, this will return immediately (returns false)
     */
    FUNC3(0);

    FUNC2(prov_ctx_lock);
}