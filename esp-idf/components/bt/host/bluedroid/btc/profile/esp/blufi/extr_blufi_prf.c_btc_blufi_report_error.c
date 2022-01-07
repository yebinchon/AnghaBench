
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int esp_blufi_error_state_t ;
struct TYPE_6__ {int state; } ;
struct TYPE_7__ {TYPE_1__ report_error; } ;
typedef TYPE_2__ esp_blufi_cb_param_t ;
struct TYPE_8__ {int act; int pid; int sig; } ;
typedef TYPE_3__ btc_msg_t ;


 int BTC_PID_BLUFI ;
 int BTC_SIG_API_CB ;
 int ESP_BLUFI_EVENT_REPORT_ERROR ;
 int btc_transfer_context (TYPE_3__*,TYPE_2__*,int,int *) ;

void btc_blufi_report_error(esp_blufi_error_state_t state)
{
    btc_msg_t msg;
    msg.sig = BTC_SIG_API_CB;
    msg.pid = BTC_PID_BLUFI;
    msg.act = ESP_BLUFI_EVENT_REPORT_ERROR;
    esp_blufi_cb_param_t param;
    param.report_error.state = state;
    btc_transfer_context(&msg, &param, sizeof(esp_blufi_cb_param_t), ((void*)0));
}
