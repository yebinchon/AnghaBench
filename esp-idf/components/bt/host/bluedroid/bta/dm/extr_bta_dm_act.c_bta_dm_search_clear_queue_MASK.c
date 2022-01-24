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
typedef  int /*<<< orphan*/  tBTA_DM_MSG ;
struct TYPE_2__ {int /*<<< orphan*/ * p_search_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__ bta_dm_search_cb ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2 (tBTA_DM_MSG *p_data)
{
    FUNC0(p_data);
    if (bta_dm_search_cb.p_search_queue) {
        FUNC1(bta_dm_search_cb.p_search_queue);
        bta_dm_search_cb.p_search_queue = NULL;
    }
}