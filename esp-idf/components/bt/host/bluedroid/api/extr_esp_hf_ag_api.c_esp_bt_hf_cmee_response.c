
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int esp_hf_cme_err_t ;
typedef int esp_hf_at_response_code_t ;
typedef int esp_err_t ;
typedef int esp_bd_addr_t ;
struct TYPE_8__ {int act; int pid; int sig; } ;
typedef TYPE_2__ btc_msg_t ;
struct TYPE_7__ {int remote_addr; int error_code; int response_code; } ;
struct TYPE_9__ {TYPE_1__ ext_at; } ;
typedef TYPE_3__ btc_hf_args_t ;
typedef int bt_status_t ;


 int BTC_HF_CME_ERR_EVT ;
 int BTC_PID_HF ;
 int BTC_SIG_API_CALL ;
 int BT_STATUS_SUCCESS ;
 scalar_t__ ESP_BLUEDROID_STATUS_ENABLED ;
 int ESP_ERR_INVALID_STATE ;
 int ESP_FAIL ;
 int ESP_OK ;
 int btc_transfer_context (TYPE_2__*,TYPE_3__*,int,int *) ;
 scalar_t__ esp_bluedroid_get_status () ;
 int memcpy (int *,int ,int) ;
 int memset (TYPE_3__*,int ,int) ;

esp_err_t esp_bt_hf_cmee_response(esp_bd_addr_t remote_addr, esp_hf_at_response_code_t response_code, esp_hf_cme_err_t error_code)
{
    if (esp_bluedroid_get_status() != ESP_BLUEDROID_STATUS_ENABLED) {
        return ESP_ERR_INVALID_STATE;
    }
    btc_msg_t msg;
    msg.sig = BTC_SIG_API_CALL;
    msg.pid = BTC_PID_HF;
    msg.act = BTC_HF_CME_ERR_EVT;

    btc_hf_args_t arg;
    memset(&arg, 0, sizeof(btc_hf_args_t));
    arg.ext_at.response_code = response_code;
    arg.ext_at.error_code = error_code;
    memcpy(&(arg.ext_at.remote_addr), remote_addr, sizeof(esp_bd_addr_t));


    bt_status_t status = btc_transfer_context(&msg, &arg, sizeof(btc_hf_args_t), ((void*)0));
    return (status = BT_STATUS_SUCCESS) ? ESP_OK : ESP_FAIL;
}
