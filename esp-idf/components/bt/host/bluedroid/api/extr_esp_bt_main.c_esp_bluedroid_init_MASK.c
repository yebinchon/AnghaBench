#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  future_t ;
typedef  int /*<<< orphan*/  esp_err_t ;
struct TYPE_3__ {int /*<<< orphan*/  act; int /*<<< orphan*/  pid; int /*<<< orphan*/  sig; } ;
typedef  TYPE_1__ btc_msg_t ;

/* Variables and functions */
 int /*<<< orphan*/  BTC_MAIN_ACT_INIT ; 
 int /*<<< orphan*/  BTC_MAIN_INIT_FUTURE ; 
 int /*<<< orphan*/  BTC_PID_MAIN_INIT ; 
 int /*<<< orphan*/  BTC_SIG_API_CALL ; 
 scalar_t__ BT_STATUS_SUCCESS ; 
 scalar_t__ ESP_BT_CONTROLLER_STATUS_ENABLED ; 
 int /*<<< orphan*/  ESP_ERR_INVALID_STATE ; 
 int /*<<< orphan*/  ESP_ERR_NO_MEM ; 
 int /*<<< orphan*/  ESP_FAIL ; 
 int /*<<< orphan*/  ESP_OK ; 
 scalar_t__ FUTURE_FAIL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int bd_already_init ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ ** FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 

esp_err_t FUNC8(void)
{
    btc_msg_t msg;
    future_t **future_p;

    if (FUNC4() != ESP_BT_CONTROLLER_STATUS_ENABLED) {
        FUNC0("Controller not initialised\n");
        return ESP_ERR_INVALID_STATE;
    }

    if (bd_already_init) {
        FUNC0("Bluedroid already initialised\n");
        return ESP_ERR_INVALID_STATE;
    }

#if HEAP_MEMORY_DEBUG
    osi_mem_dbg_init();
#endif

    FUNC1();

    future_p = FUNC2(BTC_MAIN_INIT_FUTURE);
    *future_p = FUNC6();
    if (*future_p == NULL) {
        FUNC0("Bluedroid initialise failed\n");
        return ESP_ERR_NO_MEM;
    }

    msg.sig = BTC_SIG_API_CALL;
    msg.pid = BTC_PID_MAIN_INIT;
    msg.act = BTC_MAIN_ACT_INIT;

    if (FUNC3(&msg, NULL, 0, NULL) != BT_STATUS_SUCCESS) {
        FUNC0("Bluedroid initialise failed\n");
        return ESP_FAIL;
    }

    if (FUNC5(*future_p) == FUTURE_FAIL) {
        FUNC0("Bluedroid initialise failed\n");
        return ESP_FAIL;
    }

    bd_already_init = true;

    return ESP_OK;
}