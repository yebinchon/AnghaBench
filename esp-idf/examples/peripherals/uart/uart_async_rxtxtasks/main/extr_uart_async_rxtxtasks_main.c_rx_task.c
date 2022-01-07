
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 int ESP_LOGI (char const*,char*,int const,scalar_t__*) ;
 int ESP_LOG_BUFFER_HEXDUMP (char const*,scalar_t__*,int const,int ) ;
 int ESP_LOG_INFO ;
 scalar_t__ RX_BUF_SIZE ;
 int UART_NUM_1 ;
 int esp_log_level_set (char const*,int ) ;
 int free (scalar_t__*) ;
 scalar_t__ malloc (scalar_t__) ;
 int portTICK_RATE_MS ;
 int uart_read_bytes (int ,scalar_t__*,scalar_t__,int) ;

__attribute__((used)) static void rx_task(void *arg)
{
    static const char *RX_TASK_TAG = "RX_TASK";
    esp_log_level_set(RX_TASK_TAG, ESP_LOG_INFO);
    uint8_t* data = (uint8_t*) malloc(RX_BUF_SIZE+1);
    while (1) {
        const int rxBytes = uart_read_bytes(UART_NUM_1, data, RX_BUF_SIZE, 1000 / portTICK_RATE_MS);
        if (rxBytes > 0) {
            data[rxBytes] = 0;
            ESP_LOGI(RX_TASK_TAG, "Read %d bytes: '%s'", rxBytes, data);
            ESP_LOG_BUFFER_HEXDUMP(RX_TASK_TAG, data, rxBytes, ESP_LOG_INFO);
        }
    }
    free(data);
}
