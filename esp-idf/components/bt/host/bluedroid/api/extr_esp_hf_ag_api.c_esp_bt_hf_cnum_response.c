
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int esp_hf_subscriber_service_type_t ;
typedef int esp_err_t ;
typedef int esp_bd_addr_t ;
struct TYPE_7__ {int act; int pid; int sig; } ;
typedef TYPE_1__ btc_msg_t ;
struct TYPE_9__ {char* number; int type; } ;
struct TYPE_8__ {TYPE_4__ cnum_rep; } ;
typedef TYPE_2__ btc_hf_args_t ;
typedef int bt_status_t ;


 int BTC_HF_CNUM_RESPONSE_EVT ;
 int BTC_PID_HF ;
 int BTC_SIG_API_CALL ;
 int BT_STATUS_SUCCESS ;
 scalar_t__ ESP_BLUEDROID_STATUS_ENABLED ;
 int ESP_ERR_INVALID_STATE ;
 int ESP_FAIL ;
 int ESP_OK ;
 int btc_hf_arg_deep_copy ;
 int btc_transfer_context (TYPE_1__*,TYPE_2__*,int,int ) ;
 scalar_t__ esp_bluedroid_get_status () ;
 int memcpy (TYPE_4__*,int ,int) ;
 int memset (TYPE_2__*,int ,int) ;

esp_err_t esp_bt_hf_cnum_response(esp_bd_addr_t remote_addr, char *number, esp_hf_subscriber_service_type_t type)
{
    if (esp_bluedroid_get_status() != ESP_BLUEDROID_STATUS_ENABLED) {
        return ESP_ERR_INVALID_STATE;
    }
    btc_msg_t msg;
    msg.sig = BTC_SIG_API_CALL;
    msg.pid = BTC_PID_HF;
    msg.act = BTC_HF_CNUM_RESPONSE_EVT;

    btc_hf_args_t arg;
    memset(&arg, 0, sizeof(btc_hf_args_t));
    memcpy(&(arg.cnum_rep), remote_addr, sizeof(esp_bd_addr_t));
    arg.cnum_rep.number = number;
    arg.cnum_rep.type = type;


    bt_status_t status = btc_transfer_context(&msg, &arg, sizeof(btc_hf_args_t), btc_hf_arg_deep_copy);
    return (status = BT_STATUS_SUCCESS) ? ESP_OK : ESP_FAIL;
}
