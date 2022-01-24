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
typedef  scalar_t__ tBTM_PM_MODE ;
struct TYPE_2__ {int /*<<< orphan*/  pm_id; } ;
typedef  int /*<<< orphan*/  BOOLEAN ;
typedef  int /*<<< orphan*/  BD_ADDR ;

/* Variables and functions */
 size_t BTA_DM_PM_PARK_IDX ; 
 scalar_t__ BTM_PM_MD_PARK ; 
 scalar_t__ BTM_PM_STS_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_1__ bta_dm_cb ; 
 int /*<<< orphan*/ * p_bta_dm_pm_md ; 

__attribute__((used)) static BOOLEAN FUNC2(BD_ADDR peer_addr)
{

    tBTM_PM_MODE    mode = BTM_PM_STS_ACTIVE;

    /* if not in park mode, switch to park */
    FUNC0(peer_addr, &mode);

    if (mode != BTM_PM_MD_PARK) {
        FUNC1 (bta_dm_cb.pm_id, peer_addr, &p_bta_dm_pm_md[BTA_DM_PM_PARK_IDX]);
    }
    return TRUE;

}