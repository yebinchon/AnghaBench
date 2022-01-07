
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_err_t ;


 int ESP_LOGV (int ,char*,int) ;
 int ESP_OK ;
 int JOB_RESET ;
 int TAG ;
 int portTICK_RATE_MS ;
 int s_job ;
 int sdio_slave_send_host_int (int) ;
 int vTaskDelay (int) ;

__attribute__((used)) static esp_err_t task_hostint(void)
{
    for(int i = 0; i < 8; i++) {
        ESP_LOGV(TAG, "send intr: %d", i);
        sdio_slave_send_host_int(i);

        if (s_job & JOB_RESET) break;
        vTaskDelay(500/portTICK_RATE_MS);
    }
    return ESP_OK;
}
