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
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  esp_err_t ;
typedef  scalar_t__ esp_bt_pin_type_t ;
typedef  int /*<<< orphan*/  esp_bt_pin_code_t ;
struct TYPE_7__ {int /*<<< orphan*/  act; int /*<<< orphan*/  pid; int /*<<< orphan*/  sig; } ;
typedef  TYPE_2__ btc_msg_t ;
struct TYPE_6__ {int /*<<< orphan*/  pin_code; scalar_t__ pin_code_len; scalar_t__ pin_type; } ;
struct TYPE_8__ {TYPE_1__ set_pin_type; } ;
typedef  TYPE_3__ btc_gap_bt_args_t ;

/* Variables and functions */
 int /*<<< orphan*/  BTC_GAP_BT_ACT_SET_PIN_TYPE ; 
 int /*<<< orphan*/  BTC_PID_GAP_BT ; 
 int /*<<< orphan*/  BTC_SIG_API_CALL ; 
 scalar_t__ BT_STATUS_SUCCESS ; 
 scalar_t__ ESP_BLUEDROID_STATUS_ENABLED ; 
 int /*<<< orphan*/  ESP_BT_PIN_CODE_LEN ; 
 scalar_t__ ESP_BT_PIN_TYPE_FIXED ; 
 int /*<<< orphan*/  ESP_ERR_INVALID_STATE ; 
 int /*<<< orphan*/  ESP_FAIL ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  btc_gap_bt_arg_deep_copy ; 
 scalar_t__ FUNC0 (TYPE_2__*,TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

esp_err_t FUNC4(esp_bt_pin_type_t pin_type, uint8_t pin_code_len, esp_bt_pin_code_t pin_code)
{
    btc_msg_t msg;
    btc_gap_bt_args_t arg;

    if (FUNC1() != ESP_BLUEDROID_STATUS_ENABLED) {
        return ESP_ERR_INVALID_STATE;
    }

    msg.sig = BTC_SIG_API_CALL;
    msg.pid = BTC_PID_GAP_BT;
    msg.act = BTC_GAP_BT_ACT_SET_PIN_TYPE;
    arg.set_pin_type.pin_type = pin_type;
    if (pin_type == ESP_BT_PIN_TYPE_FIXED){
        arg.set_pin_type.pin_code_len = pin_code_len;
        FUNC2(arg.set_pin_type.pin_code, pin_code, pin_code_len);
    } else {
        arg.set_pin_type.pin_code_len = 0;
        FUNC3(arg.set_pin_type.pin_code, 0, ESP_BT_PIN_CODE_LEN);
    }

    return (FUNC0(&msg, &arg, sizeof(btc_gap_bt_args_t), btc_gap_bt_arg_deep_copy)
            == BT_STATUS_SUCCESS ? ESP_OK : ESP_FAIL);
}