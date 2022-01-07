
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int wifi_mode_t ;
typedef int uint8_t ;
typedef int esp_err_t ;
typedef int esp_blufi_sta_conn_state_t ;
typedef int esp_blufi_extra_info_t ;
struct TYPE_7__ {int act; int pid; int sig; } ;
typedef TYPE_2__ btc_msg_t ;
struct TYPE_6__ {int * extra_info; int softap_conn_num; int sta_conn_state; int opmode; } ;
struct TYPE_8__ {TYPE_1__ wifi_conn_report; } ;
typedef TYPE_3__ btc_blufi_args_t ;


 int BTC_BLUFI_ACT_SEND_CFG_REPORT ;
 int BTC_PID_BLUFI ;
 int BTC_SIG_API_CALL ;
 scalar_t__ BT_STATUS_SUCCESS ;
 scalar_t__ ESP_BLUEDROID_STATUS_ENABLED ;
 int ESP_ERR_INVALID_STATE ;
 int ESP_FAIL ;
 int ESP_OK ;
 int btc_blufi_call_deep_copy ;
 scalar_t__ btc_transfer_context (TYPE_2__*,TYPE_3__*,int,int ) ;
 scalar_t__ esp_bluedroid_get_status () ;

esp_err_t esp_blufi_send_wifi_conn_report(wifi_mode_t opmode, esp_blufi_sta_conn_state_t sta_conn_state, uint8_t softap_conn_num, esp_blufi_extra_info_t *extra_info)
{
    btc_msg_t msg;
    btc_blufi_args_t arg;

    if (esp_bluedroid_get_status() != ESP_BLUEDROID_STATUS_ENABLED) {
        return ESP_ERR_INVALID_STATE;
    }

    msg.sig = BTC_SIG_API_CALL;
    msg.pid = BTC_PID_BLUFI;
    msg.act = BTC_BLUFI_ACT_SEND_CFG_REPORT;
    arg.wifi_conn_report.opmode = opmode;
    arg.wifi_conn_report.sta_conn_state = sta_conn_state;
    arg.wifi_conn_report.softap_conn_num = softap_conn_num;
    arg.wifi_conn_report.extra_info = extra_info;

    return (btc_transfer_context(&msg, &arg, sizeof(btc_blufi_args_t), btc_blufi_call_deep_copy) == BT_STATUS_SUCCESS ? ESP_OK : ESP_FAIL);
}
