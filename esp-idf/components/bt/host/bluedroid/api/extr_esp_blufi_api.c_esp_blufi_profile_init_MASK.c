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
typedef  int /*<<< orphan*/  esp_err_t ;
struct TYPE_3__ {int /*<<< orphan*/  act; int /*<<< orphan*/  pid; int /*<<< orphan*/  sig; } ;
typedef  TYPE_1__ btc_msg_t ;

/* Variables and functions */
 int /*<<< orphan*/  BTC_BLUFI_ACT_INIT ; 
 int /*<<< orphan*/  BTC_PID_BLUFI ; 
 int /*<<< orphan*/  BTC_SIG_API_CALL ; 
 scalar_t__ BT_STATUS_SUCCESS ; 
 scalar_t__ ESP_BLUEDROID_STATUS_ENABLED ; 
 int /*<<< orphan*/  ESP_ERR_INVALID_STATE ; 
 int /*<<< orphan*/  ESP_FAIL ; 
 int /*<<< orphan*/  ESP_OK ; 
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 () ; 

esp_err_t FUNC2(void)
{
    btc_msg_t msg;

    if (FUNC1() != ESP_BLUEDROID_STATUS_ENABLED) {
        return ESP_ERR_INVALID_STATE;
    }

    msg.sig = BTC_SIG_API_CALL;
    msg.pid = BTC_PID_BLUFI;
    msg.act = BTC_BLUFI_ACT_INIT;

    return (FUNC0(&msg, NULL, 0, NULL) == BT_STATUS_SUCCESS ? ESP_OK : ESP_FAIL);
}