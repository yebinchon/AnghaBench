#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT8 ;
struct TYPE_4__ {int /*<<< orphan*/  rl_state; } ;
struct TYPE_6__ {TYPE_1__ ble_ctr_cb; } ;
struct TYPE_5__ {scalar_t__ (* get_ble_resolving_list_max_size ) () ;} ;

/* Variables and functions */
 int /*<<< orphan*/  BTM_BLE_RL_IDLE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_3__ btm_cb ; 
 TYPE_2__* FUNC2 () ; 
 scalar_t__ FUNC3 () ; 

void FUNC4(UINT8 rl_mask)
{
    UINT8 rl_state = btm_cb.ble_ctr_cb.rl_state;

    btm_cb.ble_ctr_cb.rl_state |= rl_mask;
    if (rl_state == BTM_BLE_RL_IDLE &&
            btm_cb.ble_ctr_cb.rl_state != BTM_BLE_RL_IDLE &&
            FUNC2()->get_ble_resolving_list_max_size() != 0) {
        FUNC0();
        FUNC1();
    }
}