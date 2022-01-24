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
struct TYPE_3__ {int suspended_rl_state; } ;
typedef  TYPE_1__ tBTM_BLE_CB ;
struct TYPE_4__ {TYPE_1__ ble_ctr_cb; } ;

/* Variables and functions */
 int BTM_BLE_RL_ADV ; 
 int BTM_BLE_RL_IDLE ; 
 int BTM_BLE_RL_INIT ; 
 int BTM_BLE_RL_SCAN ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_2__ btm_cb ; 

void FUNC3(void)
{
    tBTM_BLE_CB *p_ble_cb = &btm_cb.ble_ctr_cb;

    if (p_ble_cb->suspended_rl_state & BTM_BLE_RL_ADV) {
        FUNC1();
    }

    if (p_ble_cb->suspended_rl_state & BTM_BLE_RL_SCAN) {
        FUNC2();
    }

    if  (p_ble_cb->suspended_rl_state & BTM_BLE_RL_INIT) {
        FUNC0();
    }

    p_ble_cb->suspended_rl_state = BTM_BLE_RL_IDLE;
}