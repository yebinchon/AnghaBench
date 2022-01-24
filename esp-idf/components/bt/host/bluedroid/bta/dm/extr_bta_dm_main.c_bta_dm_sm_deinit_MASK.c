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
typedef  int /*<<< orphan*/  tBTA_DM_SEARCH_CB ;
typedef  int /*<<< orphan*/  tBTA_DM_DI_CB ;
typedef  int /*<<< orphan*/  tBTA_DM_CB ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bta_dm_cb ; 
 int /*<<< orphan*/  bta_dm_cb_ptr ; 
 int /*<<< orphan*/  bta_dm_di_cb ; 
 int /*<<< orphan*/  bta_dm_di_cb_ptr ; 
 int /*<<< orphan*/  bta_dm_search_cb ; 
 int /*<<< orphan*/  bta_dm_search_cb_ptr ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

void FUNC2(void)
{
    FUNC1(&bta_dm_cb, 0, sizeof(tBTA_DM_CB));
    FUNC1(&bta_dm_search_cb, 0, sizeof(tBTA_DM_SEARCH_CB));
    FUNC1(&bta_dm_di_cb, 0, sizeof(tBTA_DM_DI_CB));
#if BTA_DYNAMIC_MEMORY
    FREE_AND_RESET(bta_dm_cb_ptr);
    FREE_AND_RESET(bta_dm_search_cb_ptr);
    FREE_AND_RESET(bta_dm_di_cb_ptr);
#endif /* #if BTA_DYNAMIC_MEMORY */
}