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
typedef  scalar_t__ tBTM_STATUS ;
typedef  int /*<<< orphan*/  tBTM_BLE_WL_STATE ;
typedef  int /*<<< orphan*/  tBTM_BLE_STATE_MASK ;
struct TYPE_5__ {scalar_t__ adv_mode; int /*<<< orphan*/  state; int /*<<< orphan*/  fast_adv_on; } ;
typedef  TYPE_2__ tBTM_BLE_INQ_CB ;
typedef  int /*<<< orphan*/  tBTM_BLE_GAP_STATE ;
typedef  void* UINT8 ;
struct TYPE_4__ {int /*<<< orphan*/  wl_state; TYPE_2__ inq_var; } ;
struct TYPE_6__ {TYPE_1__ ble_ctr_cb; } ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 scalar_t__ BTM_BLE_ADV_DISABLE ; 
 scalar_t__ BTM_BLE_ADV_ENABLE ; 
 int /*<<< orphan*/  BTM_BLE_STATE_ALL_ADV_MASK ; 
 int /*<<< orphan*/  BTM_BLE_STOP_ADV ; 
 int /*<<< orphan*/  BTM_BLE_WL_ADV ; 
 scalar_t__ BTM_NO_RESOURCES ; 
 scalar_t__ BTM_SUCCESS ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ HCI_SUCCESS ; 
 int /*<<< orphan*/  OSI_MUTEX_MAX_TIMEOUT ; 
 int /*<<< orphan*/  OSI_SEM_MAX_TIMEOUT ; 
 int /*<<< orphan*/  adv_enable_lock ; 
 int /*<<< orphan*/  adv_enable_sem ; 
 scalar_t__ adv_enable_status ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_3__ btm_cb ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

tBTM_STATUS FUNC7(void)
{
    tBTM_BLE_INQ_CB *p_cb = &btm_cb.ble_ctr_cb.inq_var;
    tBTM_STATUS rt = BTM_SUCCESS;
    if (p_cb->adv_mode == BTM_BLE_ADV_ENABLE) {
        FUNC4(&adv_enable_lock, OSI_MUTEX_MAX_TIMEOUT);
        UINT8 temp_adv_mode = p_cb->adv_mode;
        BOOLEAN temp_fast_adv_on = p_cb->fast_adv_on;
        tBTM_BLE_GAP_STATE temp_state = p_cb->state;
        tBTM_BLE_WL_STATE temp_wl_state = btm_cb.ble_ctr_cb.wl_state;
        tBTM_BLE_STATE_MASK temp_mask = FUNC1 ();

        p_cb->fast_adv_on = FALSE;
        p_cb->adv_mode = BTM_BLE_ADV_DISABLE;
        p_cb->state = BTM_BLE_STOP_ADV;
        btm_cb.ble_ctr_cb.wl_state &= ~BTM_BLE_WL_ADV;

        /* clear all adv states */
        FUNC0 (BTM_BLE_STATE_ALL_ADV_MASK);

        if (FUNC3 (BTM_BLE_ADV_DISABLE)) {
            FUNC6(&adv_enable_sem, OSI_SEM_MAX_TIMEOUT);
            rt = adv_enable_status;
        } else {
            // reset state
            p_cb->fast_adv_on = temp_fast_adv_on;
            p_cb->adv_mode = temp_adv_mode;
            p_cb->state = temp_state;
            btm_cb.ble_ctr_cb.wl_state = temp_wl_state;
            FUNC2 (temp_mask);

            rt = BTM_NO_RESOURCES;
        }
        if(adv_enable_status != HCI_SUCCESS) {
            p_cb->adv_mode = temp_adv_mode;
        }
        FUNC5(&adv_enable_lock);
    }
    return rt;
}