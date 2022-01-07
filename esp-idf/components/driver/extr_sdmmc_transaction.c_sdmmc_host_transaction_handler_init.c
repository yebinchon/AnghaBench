
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ esp_err_t ;


 scalar_t__ ESP_ERR_NO_MEM ;
 scalar_t__ ESP_OK ;
 int ESP_PM_APB_FREQ_MAX ;
 int assert (int ) ;
 scalar_t__ esp_pm_lock_create (int ,int ,char*,int *) ;
 int s_is_app_cmd ;
 int s_pm_lock ;
 int * s_request_mutex ;
 int vSemaphoreDelete (int *) ;
 int * xSemaphoreCreateMutex () ;

esp_err_t sdmmc_host_transaction_handler_init(void)
{
    assert(s_request_mutex == ((void*)0));
    s_request_mutex = xSemaphoreCreateMutex();
    if (!s_request_mutex) {
        return ESP_ERR_NO_MEM;
    }
    s_is_app_cmd = 0;
    return ESP_OK;
}
