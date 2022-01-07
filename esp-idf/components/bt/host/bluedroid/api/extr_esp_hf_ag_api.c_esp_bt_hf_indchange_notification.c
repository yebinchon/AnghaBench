
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int esp_hf_network_state_t ;
typedef int esp_hf_call_status_t ;
typedef int esp_hf_call_setup_status_t ;
typedef int esp_err_t ;
typedef int esp_bd_addr_t ;
struct TYPE_8__ {int act; int pid; int sig; } ;
typedef TYPE_2__ btc_msg_t ;
struct TYPE_7__ {int signal; int ntk_state; int call_setup_state; int call_state; int remote_addr; } ;
struct TYPE_9__ {TYPE_1__ ind_change; } ;
typedef TYPE_3__ btc_hf_args_t ;
typedef scalar_t__ bt_status_t ;


 int BTC_HF_IND_NOTIFICATION_EVT ;
 int BTC_PID_HF ;
 int BTC_SIG_API_CALL ;
 scalar_t__ BT_STATUS_SUCCESS ;
 scalar_t__ ESP_BLUEDROID_STATUS_ENABLED ;
 int ESP_ERR_INVALID_STATE ;
 int ESP_FAIL ;
 int ESP_OK ;
 scalar_t__ btc_transfer_context (TYPE_2__*,TYPE_3__*,int,int *) ;
 scalar_t__ esp_bluedroid_get_status () ;
 int memcpy (int *,int ,int) ;
 int memset (TYPE_3__*,int ,int) ;

esp_err_t esp_bt_hf_indchange_notification(esp_bd_addr_t remote_addr,
                                            esp_hf_call_status_t call_state,
                                            esp_hf_call_setup_status_t call_setup_state,
                                            esp_hf_network_state_t ntk_state, int signal)
{
    if (esp_bluedroid_get_status() != ESP_BLUEDROID_STATUS_ENABLED) {
        return ESP_ERR_INVALID_STATE;
    }
    btc_msg_t msg;
    msg.sig = BTC_SIG_API_CALL;
    msg.pid = BTC_PID_HF;
    msg.act = BTC_HF_IND_NOTIFICATION_EVT;

    btc_hf_args_t arg;
    memset(&arg, 0, sizeof(btc_hf_args_t));
    memcpy(&(arg.ind_change.remote_addr), remote_addr, sizeof(esp_bd_addr_t));
    arg.ind_change.call_state = call_state;
    arg.ind_change.call_setup_state = call_setup_state;
    arg.ind_change.ntk_state = ntk_state;
    arg.ind_change.signal = signal;


    bt_status_t state = btc_transfer_context(&msg, &arg, sizeof(btc_hf_args_t), ((void*)0));
    return (state == BT_STATUS_SUCCESS) ? ESP_OK : ESP_FAIL;
}
