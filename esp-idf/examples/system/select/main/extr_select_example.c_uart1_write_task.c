
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int buf ;


 int ESP_LOGE (int ,char*) ;
 int ESP_LOGI (int ,char*,int,char*) ;
 int TAG ;
 int portTICK_PERIOD_MS ;
 int snprintf (char*,int,char*,int) ;
 int strlen (char*) ;
 int uart1_deinit () ;
 int uart1_init () ;
 int uart_fd ;
 int vTaskDelay (int) ;
 int vTaskDelete (int *) ;
 int write (int ,char*,int ) ;

__attribute__((used)) static void uart1_write_task(void *param)
{
    char buf[20];

    uart1_init();

    for (uint8_t i = 1;; ++i) {
        vTaskDelay(4000 / portTICK_PERIOD_MS);

        snprintf(buf, sizeof(buf), "UART message U%d", i);
        int write_bytes = write(uart_fd, buf, strlen(buf));
        if (write_bytes < 0) {
            ESP_LOGE(TAG, "UART1 write error");
        } else {
            ESP_LOGI(TAG, "%d bytes were sent to UART1: %s", write_bytes, buf);
        }
    }

    uart1_deinit();
    vTaskDelete(((void*)0));
}
