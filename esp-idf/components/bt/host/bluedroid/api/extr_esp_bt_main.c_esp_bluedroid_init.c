
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int future_t ;
typedef int esp_err_t ;
struct TYPE_3__ {int act; int pid; int sig; } ;
typedef TYPE_1__ btc_msg_t ;


 int BTC_MAIN_ACT_INIT ;
 int BTC_MAIN_INIT_FUTURE ;
 int BTC_PID_MAIN_INIT ;
 int BTC_SIG_API_CALL ;
 scalar_t__ BT_STATUS_SUCCESS ;
 scalar_t__ ESP_BT_CONTROLLER_STATUS_ENABLED ;
 int ESP_ERR_INVALID_STATE ;
 int ESP_ERR_NO_MEM ;
 int ESP_FAIL ;
 int ESP_OK ;
 scalar_t__ FUTURE_FAIL ;
 int LOG_ERROR (char*) ;
 int bd_already_init ;
 int btc_init () ;
 int ** btc_main_get_future_p (int ) ;
 scalar_t__ btc_transfer_context (TYPE_1__*,int *,int ,int *) ;
 scalar_t__ esp_bt_controller_get_status () ;
 scalar_t__ future_await (int *) ;
 int * future_new () ;
 int osi_mem_dbg_init () ;

esp_err_t esp_bluedroid_init(void)
{
    btc_msg_t msg;
    future_t **future_p;

    if (esp_bt_controller_get_status() != ESP_BT_CONTROLLER_STATUS_ENABLED) {
        LOG_ERROR("Controller not initialised\n");
        return ESP_ERR_INVALID_STATE;
    }

    if (bd_already_init) {
        LOG_ERROR("Bluedroid already initialised\n");
        return ESP_ERR_INVALID_STATE;
    }





    btc_init();

    future_p = btc_main_get_future_p(BTC_MAIN_INIT_FUTURE);
    *future_p = future_new();
    if (*future_p == ((void*)0)) {
        LOG_ERROR("Bluedroid initialise failed\n");
        return ESP_ERR_NO_MEM;
    }

    msg.sig = BTC_SIG_API_CALL;
    msg.pid = BTC_PID_MAIN_INIT;
    msg.act = BTC_MAIN_ACT_INIT;

    if (btc_transfer_context(&msg, ((void*)0), 0, ((void*)0)) != BT_STATUS_SUCCESS) {
        LOG_ERROR("Bluedroid initialise failed\n");
        return ESP_FAIL;
    }

    if (future_await(*future_p) == FUTURE_FAIL) {
        LOG_ERROR("Bluedroid initialise failed\n");
        return ESP_FAIL;
    }

    bd_already_init = 1;

    return ESP_OK;
}
