#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tBTA_SYS_CONN_CBACK ;
struct TYPE_4__ {TYPE_1__* pm_timer; int /*<<< orphan*/  pm_id; } ;
struct TYPE_3__ {int /*<<< orphan*/ * pm_action; } ;

/* Variables and functions */
 int BTA_DM_NUM_PM_TIMER ; 
 int BTA_DM_PM_MODE_TIMER_MAX ; 
 int /*<<< orphan*/  BTA_DM_PM_NO_ACTION ; 
 int /*<<< orphan*/  BTM_PM_DEREG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__ bta_dm_cb ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(void)
{
    FUNC0( BTM_PM_DEREG, &bta_dm_cb.pm_id, NULL);

    /*
     * Deregister the PM callback from the system handling to prevent
     * re-enabling the PM timers after this call if the callback is invoked.
     */
    FUNC2((tBTA_SYS_CONN_CBACK *)NULL);

    /* Need to stop all active timers. */
    for (int i = 0; i < BTA_DM_NUM_PM_TIMER; i++) {
        for (int j = 0; j < BTA_DM_PM_MODE_TIMER_MAX; j++) {
            FUNC1(&bta_dm_cb.pm_timer[i], j);
            bta_dm_cb.pm_timer[i].pm_action[j] = BTA_DM_PM_NO_ACTION;
        }
    }
}