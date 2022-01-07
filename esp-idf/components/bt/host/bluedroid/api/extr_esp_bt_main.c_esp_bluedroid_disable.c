
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int future_t ;
typedef int esp_err_t ;
struct TYPE_3__ {int act; int pid; int sig; } ;
typedef TYPE_1__ btc_msg_t ;


 int BTC_MAIN_ACT_DISABLE ;
 int BTC_MAIN_DISABLE_FUTURE ;
 int BTC_PID_MAIN_INIT ;
 int BTC_SIG_API_CALL ;
 scalar_t__ BT_STATUS_SUCCESS ;
 int ESP_ERR_INVALID_STATE ;
 int ESP_ERR_NO_MEM ;
 int ESP_FAIL ;
 int ESP_OK ;
 scalar_t__ FUTURE_FAIL ;
 int LOG_ERROR (char*) ;
 int bd_already_enable ;
 int ** btc_main_get_future_p (int ) ;
 scalar_t__ btc_transfer_context (TYPE_1__*,int *,int ,int *) ;
 scalar_t__ future_await (int *) ;
 int * future_new () ;

esp_err_t esp_bluedroid_disable(void)
{
    btc_msg_t msg;
    future_t **future_p;

    if (!bd_already_enable) {
        LOG_ERROR("Bluedroid already disabled\n");
        return ESP_ERR_INVALID_STATE;
    }

    future_p = btc_main_get_future_p(BTC_MAIN_DISABLE_FUTURE);
    *future_p = future_new();
    if (*future_p == ((void*)0)) {
        LOG_ERROR("Bluedroid disable failed\n");
        return ESP_ERR_NO_MEM;
    }

    msg.sig = BTC_SIG_API_CALL;
    msg.pid = BTC_PID_MAIN_INIT;
    msg.act = BTC_MAIN_ACT_DISABLE;

    if (btc_transfer_context(&msg, ((void*)0), 0, ((void*)0)) != BT_STATUS_SUCCESS) {
        LOG_ERROR("Bluedroid disable failed\n");
        return ESP_FAIL;
    }

    if (future_await(*future_p) == FUTURE_FAIL) {
        LOG_ERROR("Bluedroid disable failed\n");
        return ESP_FAIL;
    }

    bd_already_enable = 0;

    return ESP_OK;
}
