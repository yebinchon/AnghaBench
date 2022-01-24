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
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  esp_gatt_if_t ;
typedef  int /*<<< orphan*/  esp_err_t ;
typedef  int /*<<< orphan*/  esp_bt_uuid_t ;
struct TYPE_7__ {int /*<<< orphan*/  act; int /*<<< orphan*/  pid; int /*<<< orphan*/  sig; } ;
typedef  TYPE_2__ btc_msg_t ;
struct TYPE_6__ {int filter_uuid_enable; int /*<<< orphan*/  filter_uuid; int /*<<< orphan*/  conn_id; } ;
struct TYPE_8__ {TYPE_1__ search_srvc; } ;
typedef  TYPE_3__ btc_ble_gattc_args_t ;

/* Variables and functions */
 int /*<<< orphan*/  BTC_GATTC_ACT_SEARCH_SERVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BTC_PID_GATTC ; 
 int /*<<< orphan*/  BTC_SIG_API_CALL ; 
 scalar_t__ BT_STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ESP_BLUEDROID_STATUS_ENABLED ; 
 int /*<<< orphan*/  ESP_FAIL ; 
 int /*<<< orphan*/  ESP_OK ; 
 scalar_t__ FUNC2 (TYPE_2__*,TYPE_3__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

esp_err_t FUNC4(esp_gatt_if_t gattc_if, uint16_t conn_id, esp_bt_uuid_t *filter_uuid)
{
    btc_msg_t msg;
    btc_ble_gattc_args_t arg;

    FUNC1(ESP_BLUEDROID_STATUS_ENABLED);

    msg.sig = BTC_SIG_API_CALL;
    msg.pid = BTC_PID_GATTC;
    msg.act = BTC_GATTC_ACT_SEARCH_SERVICE;
    arg.search_srvc.conn_id = FUNC0(gattc_if, conn_id);

    if (filter_uuid) {
        arg.search_srvc.filter_uuid_enable = true;
        FUNC3(&arg.search_srvc.filter_uuid, filter_uuid, sizeof(esp_bt_uuid_t));
    } else {
        arg.search_srvc.filter_uuid_enable = false;
    }

    return (FUNC2(&msg, &arg, sizeof(btc_ble_gattc_args_t), NULL) == BT_STATUS_SUCCESS ? ESP_OK : ESP_FAIL);
}