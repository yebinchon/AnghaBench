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
typedef  int /*<<< orphan*/  esp_bt_uuid_t ;
typedef  int /*<<< orphan*/ * esp_bd_addr_t ;
struct TYPE_7__ {int /*<<< orphan*/  act; int /*<<< orphan*/  pid; int /*<<< orphan*/  sig; } ;
typedef  TYPE_2__ btc_msg_t ;
struct TYPE_6__ {int /*<<< orphan*/  uuid; int /*<<< orphan*/  bda; } ;
struct TYPE_8__ {TYPE_1__ get_rmt_srv_rcd; } ;
typedef  TYPE_3__ btc_gap_bt_args_t ;
typedef  int /*<<< orphan*/  bt_bdaddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  BTC_GAP_BT_ACT_GET_REMOTE_SERVICE_RECORD ; 
 int /*<<< orphan*/  BTC_PID_GAP_BT ; 
 int /*<<< orphan*/  BTC_SIG_API_CALL ; 
 scalar_t__ BT_STATUS_SUCCESS ; 
 scalar_t__ ESP_BLUEDROID_STATUS_ENABLED ; 
 int /*<<< orphan*/  ESP_ERR_INVALID_STATE ; 
 int /*<<< orphan*/  ESP_FAIL ; 
 int /*<<< orphan*/  ESP_OK ; 
 scalar_t__ FUNC0 (TYPE_2__*,TYPE_3__*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

esp_err_t FUNC3(esp_bd_addr_t remote_bda, esp_bt_uuid_t *uuid)
{
    btc_msg_t msg;
    btc_gap_bt_args_t arg;

    if (FUNC1() != ESP_BLUEDROID_STATUS_ENABLED) {
        return ESP_ERR_INVALID_STATE;
    }

    msg.sig = BTC_SIG_API_CALL;
    msg.pid = BTC_PID_GAP_BT;
    msg.act = BTC_GAP_BT_ACT_GET_REMOTE_SERVICE_RECORD;

    FUNC2(&arg.get_rmt_srv_rcd.bda, remote_bda, sizeof(bt_bdaddr_t));
    FUNC2(&arg.get_rmt_srv_rcd.uuid, uuid, sizeof(esp_bt_uuid_t));
    return (FUNC0(&msg, &arg, sizeof(btc_gap_bt_args_t), NULL) == BT_STATUS_SUCCESS ? ESP_OK : ESP_FAIL);
}