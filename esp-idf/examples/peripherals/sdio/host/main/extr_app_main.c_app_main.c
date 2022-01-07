
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int esp_slave_context_t ;
typedef int esp_err_t ;


 int CONFIG_FREERTOS_HZ ;
 int ESP_ERROR_CHECK (int ) ;
 int ESP_LOGI (int ,char*) ;
 int TAG ;
 int job_fifo (int *) ;
 int job_getint (int *) ;
 int job_write_reg (int *,int) ;
 int process_event (int *) ;
 int slave_init (int *) ;
 int slave_power_on () ;
 int slave_reset (int *) ;
 int vTaskDelay (int) ;
 int xTaskGetTickCount () ;

void app_main(void)
{
    esp_slave_context_t context;
    esp_err_t err;


    slave_power_on();

    ESP_LOGI(TAG, "host ready, start initializing slave...");

    err = slave_init(&context);
    ESP_ERROR_CHECK(err);

    err = slave_reset(&context);
    ESP_ERROR_CHECK(err);

    uint32_t start, end;

    job_write_reg(&context, 10);

    int times = 2;

    while (1) {
        job_getint(&context);
        start = xTaskGetTickCount();
        while (1) {
            process_event(&context);
            vTaskDelay(1);
            end = xTaskGetTickCount();
            if ((end - start) * 1000 / CONFIG_FREERTOS_HZ > 5000) {
                break;
            }
        }
        if (--times == 0) {
            break;
        }
    };

    while (1) {
        job_fifo(&context);

        start = xTaskGetTickCount();
        while (1) {
            process_event(&context);
            vTaskDelay(1);
            end = xTaskGetTickCount();
            if ((end - start) * 1000 / CONFIG_FREERTOS_HZ > 2000) {
                break;
            }
        }
    }
}
