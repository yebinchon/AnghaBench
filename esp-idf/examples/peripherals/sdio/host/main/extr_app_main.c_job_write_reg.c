
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int esp_slave_context_t ;
typedef int esp_err_t ;


 int ESP_ERROR_CHECK (int ) ;
 int ESP_LOGD (int ,char*,int) ;
 int ESP_LOGI (int ,char*) ;
 int ESP_LOG_BUFFER_HEXDUMP (int ,int *,int,int ) ;
 int ESP_LOG_INFO ;
 int JOB_WRITE_REG ;
 int SLAVE_REG_VALUE ;
 int TAG ;
 int esp_slave_read_reg (int *,int,int *) ;
 int esp_slave_write_reg (int *,int ,int,int *) ;
 int slave_inform_job (int *,int ) ;
 int vTaskDelay (int) ;

void job_write_reg(esp_slave_context_t *context, int value)
{
    esp_err_t ret;
    uint8_t reg_read[64];
    ESP_LOGI(TAG, "========JOB: write slave reg========");
    ret = esp_slave_write_reg(context, SLAVE_REG_VALUE, value, ((void*)0));
    ESP_ERROR_CHECK(ret);

    ret = slave_inform_job(context, JOB_WRITE_REG);
    ESP_ERROR_CHECK(ret);

    vTaskDelay(10);
    for (int i = 0; i < 64; i++) {
        ESP_LOGD(TAG, "reading register %d", i);
        ret = esp_slave_read_reg(context, i, &reg_read[i]);
        ESP_ERROR_CHECK(ret);
    }

    ESP_LOGI(TAG, "read registers:");
    ESP_LOG_BUFFER_HEXDUMP(TAG, reg_read, 64, ESP_LOG_INFO);
}
