
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int esp_hf_call_status_t ;
typedef int esp_hf_call_setup_status_t ;
typedef int esp_hf_call_addr_type_t ;
typedef int esp_err_t ;
typedef int esp_bd_addr_t ;
struct TYPE_8__ {int act; int pid; int sig; } ;
typedef TYPE_2__ btc_msg_t ;
struct TYPE_7__ {int num_active; int num_held; char* number; int call_addr_type; int call_setup_state; int call_state; int remote_addr; } ;
struct TYPE_9__ {TYPE_1__ phone; } ;
typedef TYPE_3__ btc_hf_args_t ;
typedef int bt_status_t ;


 int BTC_HF_END_CALL_EVT ;
 int BTC_PID_HF ;
 int BTC_SIG_API_CALL ;
 int BT_STATUS_SUCCESS ;
 scalar_t__ ESP_BLUEDROID_STATUS_ENABLED ;
 int ESP_ERR_INVALID_STATE ;
 int ESP_FAIL ;
 int ESP_OK ;
 int btc_hf_arg_deep_copy ;
 int btc_transfer_context (TYPE_2__*,TYPE_3__*,int,int ) ;
 scalar_t__ esp_bluedroid_get_status () ;
 int memcpy (int *,int ,int) ;
 int memset (TYPE_3__*,int ,int) ;

esp_err_t esp_bt_hf_end_call(esp_bd_addr_t remote_addr, int num_active, int num_held,
                            esp_hf_call_status_t call_state, esp_hf_call_setup_status_t call_setup_state,
                            char *number, esp_hf_call_addr_type_t call_addr_type)
{
    if (esp_bluedroid_get_status() != ESP_BLUEDROID_STATUS_ENABLED) {
        return ESP_ERR_INVALID_STATE;
    }
    btc_msg_t msg;
    msg.sig = BTC_SIG_API_CALL;
    msg.pid = BTC_PID_HF;
    msg.act = BTC_HF_END_CALL_EVT;

    btc_hf_args_t arg;
    memset(&arg, 0, sizeof(btc_hf_args_t));
    memcpy(&(arg.phone.remote_addr), remote_addr, sizeof(esp_bd_addr_t));
    arg.phone.num_active = num_active;
    arg.phone.num_held = num_held;
    arg.phone.call_state = call_state;
    arg.phone.call_setup_state = call_setup_state;
    arg.phone.number = number;
    arg.phone.call_addr_type = call_addr_type;


    bt_status_t status = btc_transfer_context(&msg, &arg, sizeof(btc_hf_args_t), btc_hf_arg_deep_copy);
    return (status = BT_STATUS_SUCCESS) ? ESP_OK : ESP_FAIL;
}
