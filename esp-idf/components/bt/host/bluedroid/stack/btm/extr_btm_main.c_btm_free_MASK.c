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
struct TYPE_2__ {int /*<<< orphan*/  sec_pending_q; int /*<<< orphan*/  page_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_1__ btm_cb ; 
 int /*<<< orphan*/  btm_cb_ptr ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  osi_free_func ; 

void FUNC4(void)
{
    FUNC3(btm_cb.page_queue, osi_free_func);
    FUNC3(btm_cb.sec_pending_q, osi_free_func);
#if BTM_DYNAMIC_MEMORY
    FREE_AND_RESET(btm_cb_ptr);
#endif
#if BLE_INCLUDED == TRUE
    FUNC1();
    FUNC2();
#endif
}