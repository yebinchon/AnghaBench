
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_slave_context_t ;
typedef scalar_t__ esp_err_t ;


 int BIT (int ) ;
 int ESP_LOGI (int ,char*) ;
 scalar_t__ ESP_OK ;
 int JOB_RESET ;
 int SLAVE_INTR_NOTIFY ;
 int TAG ;
 scalar_t__ esp_slave_send_slave_intr (int *,int ) ;
 scalar_t__ esp_slave_wait_for_ioready (int *) ;
 scalar_t__ esp_slave_write_reg (int *,int ,int ,int *) ;
 int portTICK_RATE_MS ;
 int vTaskDelay (int) ;

esp_err_t slave_reset(esp_slave_context_t *context)
{
    esp_err_t ret;
    ESP_LOGI(TAG, "send reset to slave...");
    ret = esp_slave_write_reg(context, 0, JOB_RESET, ((void*)0));
    if (ret != ESP_OK) {
        return ret;
    }
    ret = esp_slave_send_slave_intr(context, BIT(SLAVE_INTR_NOTIFY));
    if (ret != ESP_OK) {
        return ret;
    }

    vTaskDelay(500 / portTICK_RATE_MS);
    ret = esp_slave_wait_for_ioready(context);
    ESP_LOGI(TAG, "slave io ready");
    return ret;
}
