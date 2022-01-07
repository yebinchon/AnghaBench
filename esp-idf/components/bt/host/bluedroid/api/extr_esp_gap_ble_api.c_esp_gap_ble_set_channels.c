
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int esp_gap_ble_channels ;
typedef int esp_err_t ;
struct TYPE_7__ {int act; int pid; int sig; } ;
typedef TYPE_2__ btc_msg_t ;
struct TYPE_6__ {int* channels; } ;
struct TYPE_8__ {TYPE_1__ set_channels; } ;
typedef TYPE_3__ btc_ble_gap_args_t ;


 int BTC_GAP_BLE_SET_AFH_CHANNELS ;
 int BTC_PID_GAP_BLE ;
 int BTC_SIG_API_CALL ;
 scalar_t__ BT_STATUS_SUCCESS ;
 scalar_t__ ESP_BLUEDROID_STATUS_ENABLED ;
 int ESP_ERR_INVALID_STATE ;
 int ESP_FAIL ;
 int ESP_GAP_BLE_CHANNELS_LEN ;
 int ESP_OK ;
 scalar_t__ btc_transfer_context (TYPE_2__*,TYPE_3__*,int,int *) ;
 scalar_t__ esp_bluedroid_get_status () ;
 int memcpy (int**,int ,int) ;

esp_err_t esp_gap_ble_set_channels(esp_gap_ble_channels channels)
{
    btc_msg_t msg;
    btc_ble_gap_args_t arg;

    if (esp_bluedroid_get_status() != ESP_BLUEDROID_STATUS_ENABLED) {
        return ESP_ERR_INVALID_STATE;
    }

    msg.sig = BTC_SIG_API_CALL;
    msg.pid = BTC_PID_GAP_BLE;
    msg.act = BTC_GAP_BLE_SET_AFH_CHANNELS;

    memcpy(&arg.set_channels.channels, channels, ESP_GAP_BLE_CHANNELS_LEN);
    arg.set_channels.channels[ESP_GAP_BLE_CHANNELS_LEN -1] &= 0x1F;
    return (btc_transfer_context(&msg, &arg, sizeof(btc_ble_gap_args_t), ((void*)0)) == BT_STATUS_SUCCESS ? ESP_OK : ESP_FAIL);
}
