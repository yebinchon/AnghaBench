#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  esp_err_t ;
struct TYPE_7__ {int /*<<< orphan*/  act; int /*<<< orphan*/  pid; int /*<<< orphan*/  sig; } ;
typedef  TYPE_2__ btc_msg_t ;
struct TYPE_6__ {int /*<<< orphan*/  device_name; } ;
struct TYPE_8__ {TYPE_1__ set_dev_name; } ;
typedef  TYPE_3__ btc_dev_args_t ;

/* Variables and functions */
 int /*<<< orphan*/  BTC_DEV_ACT_SET_DEVICE_NAME ; 
 int /*<<< orphan*/  BTC_PID_DEV ; 
 int /*<<< orphan*/  BTC_SIG_API_CALL ; 
 scalar_t__ BT_STATUS_SUCCESS ; 
 scalar_t__ ESP_BLUEDROID_STATUS_ENABLED ; 
 scalar_t__ ESP_DEV_DEVICE_NAME_MAX ; 
 int /*<<< orphan*/  ESP_ERR_INVALID_ARG ; 
 int /*<<< orphan*/  ESP_ERR_INVALID_STATE ; 
 int /*<<< orphan*/  ESP_FAIL ; 
 int /*<<< orphan*/  ESP_OK ; 
 scalar_t__ FUNC0 (TYPE_2__*,TYPE_3__*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC3 (char const*) ; 

esp_err_t FUNC4(const char *name)
{
    btc_msg_t msg;
    btc_dev_args_t arg;

    if (FUNC1() != ESP_BLUEDROID_STATUS_ENABLED) {
        return ESP_ERR_INVALID_STATE;
    }
    if (!name){
        return ESP_ERR_INVALID_ARG;
    }
    if (FUNC3(name) > ESP_DEV_DEVICE_NAME_MAX) {
        return ESP_ERR_INVALID_ARG;
    }

    msg.sig = BTC_SIG_API_CALL;
    msg.pid = BTC_PID_DEV;
    msg.act = BTC_DEV_ACT_SET_DEVICE_NAME;
    FUNC2(arg.set_dev_name.device_name, name);

    return (FUNC0(&msg, &arg, sizeof(btc_dev_args_t), NULL) == BT_STATUS_SUCCESS ? ESP_OK : ESP_FAIL);
}