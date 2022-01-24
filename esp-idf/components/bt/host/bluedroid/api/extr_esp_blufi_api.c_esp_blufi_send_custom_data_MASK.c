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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  esp_err_t ;
struct TYPE_7__ {int /*<<< orphan*/  act; int /*<<< orphan*/  pid; int /*<<< orphan*/  sig; } ;
typedef  TYPE_2__ btc_msg_t ;
struct TYPE_6__ {scalar_t__ data_len; int /*<<< orphan*/ * data; } ;
struct TYPE_8__ {TYPE_1__ custom_data; } ;
typedef  TYPE_3__ btc_blufi_args_t ;

/* Variables and functions */
 int /*<<< orphan*/  BTC_BLUFI_ACT_SEND_CUSTOM_DATA ; 
 int /*<<< orphan*/  BTC_PID_BLUFI ; 
 int /*<<< orphan*/  BTC_SIG_API_CALL ; 
 scalar_t__ BT_STATUS_SUCCESS ; 
 scalar_t__ ESP_BLUEDROID_STATUS_ENABLED ; 
 int /*<<< orphan*/  ESP_ERR_INVALID_ARG ; 
 int /*<<< orphan*/  ESP_ERR_INVALID_STATE ; 
 int /*<<< orphan*/  ESP_FAIL ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  btc_blufi_call_deep_copy ; 
 scalar_t__ FUNC0 (TYPE_2__*,TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 

esp_err_t FUNC2(uint8_t *data, uint32_t data_len)
{
    btc_msg_t msg;
    btc_blufi_args_t arg;
    if(data == NULL || data_len == 0) {
        return ESP_ERR_INVALID_ARG;
    }
    if (FUNC1() != ESP_BLUEDROID_STATUS_ENABLED) {
        return ESP_ERR_INVALID_STATE;
    }

    msg.sig = BTC_SIG_API_CALL;
    msg.pid = BTC_PID_BLUFI;
    msg.act = BTC_BLUFI_ACT_SEND_CUSTOM_DATA;
    arg.custom_data.data = data;
    arg.custom_data.data_len = data_len;

    return (FUNC0(&msg, &arg, sizeof(btc_blufi_args_t), btc_blufi_call_deep_copy) == BT_STATUS_SUCCESS ? ESP_OK : ESP_FAIL);
}