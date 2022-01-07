
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef int esp_err_t ;
struct TYPE_7__ {int act; int pid; int sig; } ;
typedef TYPE_2__ btc_msg_t ;
struct TYPE_6__ {scalar_t__ data_len; int * data; } ;
struct TYPE_8__ {TYPE_1__ custom_data; } ;
typedef TYPE_3__ btc_blufi_args_t ;


 int BTC_BLUFI_ACT_SEND_CUSTOM_DATA ;
 int BTC_PID_BLUFI ;
 int BTC_SIG_API_CALL ;
 scalar_t__ BT_STATUS_SUCCESS ;
 scalar_t__ ESP_BLUEDROID_STATUS_ENABLED ;
 int ESP_ERR_INVALID_ARG ;
 int ESP_ERR_INVALID_STATE ;
 int ESP_FAIL ;
 int ESP_OK ;
 int btc_blufi_call_deep_copy ;
 scalar_t__ btc_transfer_context (TYPE_2__*,TYPE_3__*,int,int ) ;
 scalar_t__ esp_bluedroid_get_status () ;

esp_err_t esp_blufi_send_custom_data(uint8_t *data, uint32_t data_len)
{
    btc_msg_t msg;
    btc_blufi_args_t arg;
    if(data == ((void*)0) || data_len == 0) {
        return ESP_ERR_INVALID_ARG;
    }
    if (esp_bluedroid_get_status() != ESP_BLUEDROID_STATUS_ENABLED) {
        return ESP_ERR_INVALID_STATE;
    }

    msg.sig = BTC_SIG_API_CALL;
    msg.pid = BTC_PID_BLUFI;
    msg.act = BTC_BLUFI_ACT_SEND_CUSTOM_DATA;
    arg.custom_data.data = data;
    arg.custom_data.data_len = data_len;

    return (btc_transfer_context(&msg, &arg, sizeof(btc_blufi_args_t), btc_blufi_call_deep_copy) == BT_STATUS_SUCCESS ? ESP_OK : ESP_FAIL);
}
