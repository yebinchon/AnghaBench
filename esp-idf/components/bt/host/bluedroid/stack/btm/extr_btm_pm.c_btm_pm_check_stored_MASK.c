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
struct TYPE_4__ {TYPE_1__* pm_mode_db; } ;
struct TYPE_3__ {int state; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTM_PM_SET_ONLY_ID ; 
 int BTM_PM_STORED_MASK ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int MAX_L2CAP_LINKS ; 
 TYPE_2__ btm_cb ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(void)
{
    int     xx;
    for (xx = 0; xx < MAX_L2CAP_LINKS; xx++) {
        if (btm_cb.pm_mode_db[xx].state & BTM_PM_STORED_MASK) {
            btm_cb.pm_mode_db[xx].state &= ~BTM_PM_STORED_MASK;
            FUNC0( "btm_pm_check_stored :%d", xx);
            FUNC1(BTM_PM_SET_ONLY_ID, xx, NULL);
            break;
        }
    }
}