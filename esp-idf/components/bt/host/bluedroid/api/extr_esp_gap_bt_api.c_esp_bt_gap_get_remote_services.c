
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int esp_err_t ;
typedef int esp_bd_addr_t ;
struct TYPE_5__ {int act; int pid; int sig; } ;
typedef TYPE_1__ btc_msg_t ;
struct TYPE_6__ {int bda; } ;
typedef TYPE_2__ btc_gap_bt_args_t ;
typedef int bt_bdaddr_t ;


 int BTC_GAP_BT_ACT_GET_REMOTE_SERVICES ;
 int BTC_PID_GAP_BT ;
 int BTC_SIG_API_CALL ;
 scalar_t__ BT_STATUS_SUCCESS ;
 scalar_t__ ESP_BLUEDROID_STATUS_ENABLED ;
 int ESP_ERR_INVALID_STATE ;
 int ESP_FAIL ;
 int ESP_OK ;
 scalar_t__ btc_transfer_context (TYPE_1__*,TYPE_2__*,int,int *) ;
 scalar_t__ esp_bluedroid_get_status () ;
 int memcpy (int *,int ,int) ;

esp_err_t esp_bt_gap_get_remote_services(esp_bd_addr_t remote_bda)
{
    btc_msg_t msg;
    btc_gap_bt_args_t arg;

    if (esp_bluedroid_get_status() != ESP_BLUEDROID_STATUS_ENABLED) {
        return ESP_ERR_INVALID_STATE;
    }

    msg.sig = BTC_SIG_API_CALL;
    msg.pid = BTC_PID_GAP_BT;
    msg.act = BTC_GAP_BT_ACT_GET_REMOTE_SERVICES;

    memcpy(&arg.bda, remote_bda, sizeof(bt_bdaddr_t));
    return (btc_transfer_context(&msg, &arg, sizeof(btc_gap_bt_args_t), ((void*)0)) == BT_STATUS_SUCCESS ? ESP_OK : ESP_FAIL);
}
