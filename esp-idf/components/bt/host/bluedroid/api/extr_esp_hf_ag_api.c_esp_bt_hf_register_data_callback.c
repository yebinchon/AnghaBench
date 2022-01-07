
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int esp_hf_outgoing_data_cb_t ;
typedef int esp_hf_incoming_data_cb_t ;
typedef int esp_err_t ;
struct TYPE_8__ {int act; int pid; int sig; } ;
typedef TYPE_2__ btc_msg_t ;
struct TYPE_7__ {int send; int recv; } ;
struct TYPE_9__ {TYPE_1__ reg_data_cb; } ;
typedef TYPE_3__ btc_hf_args_t ;
typedef scalar_t__ bt_status_t ;


 int BTC_HF_REGISTER_DATA_CALLBACK_EVT ;
 int BTC_PID_HF ;
 int BTC_SIG_API_CALL ;
 scalar_t__ BT_STATUS_SUCCESS ;
 scalar_t__ ESP_BLUEDROID_STATUS_ENABLED ;
 int ESP_ERR_INVALID_STATE ;
 int ESP_FAIL ;
 int ESP_OK ;
 scalar_t__ btc_transfer_context (TYPE_2__*,TYPE_3__*,int,int *) ;
 scalar_t__ esp_bluedroid_get_status () ;
 int memset (TYPE_3__*,int ,int) ;

esp_err_t esp_bt_hf_register_data_callback(esp_hf_incoming_data_cb_t recv, esp_hf_outgoing_data_cb_t send)
{
    if (esp_bluedroid_get_status() != ESP_BLUEDROID_STATUS_ENABLED) {
        return ESP_ERR_INVALID_STATE;
    }
    btc_msg_t msg;
    msg.sig = BTC_SIG_API_CALL;
    msg.pid = BTC_PID_HF;
    msg.act = BTC_HF_REGISTER_DATA_CALLBACK_EVT;

    btc_hf_args_t arg;
    memset(&arg, 0, sizeof(btc_hf_args_t));
    arg.reg_data_cb.recv = recv;
    arg.reg_data_cb.send = send;


    bt_status_t status = btc_transfer_context(&msg, &arg, sizeof(btc_hf_args_t), ((void*)0));
    return (status == BT_STATUS_SUCCESS) ? ESP_OK : ESP_FAIL;
}
