
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ESP_LOGI (int ,char*,int,int) ;
 int SPP_DATA_LEN ;
 int SPP_TAG ;
 int esp_log_buffer_hex (int ,int ,int) ;
 int portTICK_PERIOD_MS ;
 int read (int,int ,int ) ;
 int spp_data ;
 int spp_wr_task_shut_down () ;
 int vTaskDelay (int) ;

__attribute__((used)) static void spp_read_handle(void * param)
{
    int size = 0;
    int fd = (int)param;
    do {
        size = read (fd, spp_data, SPP_DATA_LEN);
        ESP_LOGI(SPP_TAG, "fd = %d data_len = %d", fd, size);
        if (size == -1) {
            break;
        }
        esp_log_buffer_hex(SPP_TAG, spp_data, size);
        if (size == 0) {

            vTaskDelay(1000 / portTICK_PERIOD_MS);
        }
    } while (1);
    spp_wr_task_shut_down();
}
