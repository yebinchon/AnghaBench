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
struct TYPE_7__ {int /*<<< orphan*/  act; int /*<<< orphan*/  pid; int /*<<< orphan*/  sig; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_2__ btc_msg_t ;
struct TYPE_6__ {int /*<<< orphan*/  string; } ;
struct TYPE_8__ {TYPE_1__ input_string; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_3__ btc_ble_mesh_prov_args_t ;

/* Variables and functions */
 int /*<<< orphan*/  BTC_BLE_MESH_ACT_INPUT_STRING ; 
 int /*<<< orphan*/  BTC_PID_PROV ; 
 int /*<<< orphan*/  BTC_SIG_API_CALL ; 
 scalar_t__ BT_STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ESP_BLE_HOST_STATUS_ENABLED ; 
 int /*<<< orphan*/  ESP_ERR_INVALID_ARG ; 
 int /*<<< orphan*/  ESP_FAIL ; 
 int /*<<< orphan*/  ESP_OK ; 
 scalar_t__ FUNC1 (TYPE_2__*,TYPE_3__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 

esp_err_t FUNC5(const char *string)
{
    btc_ble_mesh_prov_args_t arg = {0};
    btc_msg_t msg = {0};

    if (!string) {
        return ESP_ERR_INVALID_ARG;
    }

    FUNC0(ESP_BLE_HOST_STATUS_ENABLED);

    msg.sig = BTC_SIG_API_CALL;
    msg.pid = BTC_PID_PROV;
    msg.act = BTC_BLE_MESH_ACT_INPUT_STRING;
    FUNC2(arg.input_string.string, 0, sizeof(arg.input_string.string));
    FUNC4(arg.input_string.string, string, FUNC3(string));

    return (FUNC1(&msg, &arg, sizeof(btc_ble_mesh_prov_args_t), NULL)
            == BT_STATUS_SUCCESS ? ESP_OK : ESP_FAIL);
}