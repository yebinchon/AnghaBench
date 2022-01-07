
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int esp_err_t ;
typedef int esp_bd_addr_t ;
struct TYPE_9__ {int act; int pid; int sig; } ;
typedef TYPE_3__ btc_msg_t ;
struct TYPE_7__ {int address; } ;
struct TYPE_8__ {int accept; TYPE_1__ bda; } ;
struct TYPE_10__ {TYPE_2__ confirm_reply; } ;
typedef TYPE_4__ btc_gap_bt_args_t ;


 int BTC_GAP_BT_ACT_CONFIRM_REPLY ;
 int BTC_PID_GAP_BT ;
 int BTC_SIG_API_CALL ;
 scalar_t__ BT_STATUS_SUCCESS ;
 scalar_t__ ESP_BLUEDROID_STATUS_ENABLED ;
 int ESP_ERR_INVALID_STATE ;
 int ESP_FAIL ;
 int ESP_OK ;
 int btc_gap_bt_arg_deep_copy ;
 scalar_t__ btc_transfer_context (TYPE_3__*,TYPE_4__*,int,int ) ;
 scalar_t__ esp_bluedroid_get_status () ;
 int memcpy (int ,int ,int) ;

esp_err_t esp_bt_gap_ssp_confirm_reply(esp_bd_addr_t bd_addr, bool accept)
{
    btc_msg_t msg;
    btc_gap_bt_args_t arg;

    if (esp_bluedroid_get_status() != ESP_BLUEDROID_STATUS_ENABLED) {
        return ESP_ERR_INVALID_STATE;
    }

    msg.sig = BTC_SIG_API_CALL;
    msg.pid = BTC_PID_GAP_BT;
    msg.act = BTC_GAP_BT_ACT_CONFIRM_REPLY;
    arg.confirm_reply.accept = accept;
    memcpy(arg.confirm_reply.bda.address, bd_addr, sizeof(esp_bd_addr_t));
    return (btc_transfer_context(&msg, &arg, sizeof(btc_gap_bt_args_t), btc_gap_bt_arg_deep_copy)
            == BT_STATUS_SUCCESS ? ESP_OK : ESP_FAIL);
}
