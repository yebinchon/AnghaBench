
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* buffer; int uart_port; } ;
typedef TYPE_1__ esp_gps_t ;


 int ESP_LOGW (int ,char*) ;
 scalar_t__ ESP_OK ;
 int GPS_TAG ;
 scalar_t__ gps_decode (TYPE_1__*,int) ;
 int portTICK_PERIOD_MS ;
 int uart_flush_input (int ) ;
 int uart_pattern_pop_pos (int ) ;
 int uart_read_bytes (int ,char*,int,int) ;

__attribute__((used)) static void esp_handle_uart_pattern(esp_gps_t *esp_gps)
{
    int pos = uart_pattern_pop_pos(esp_gps->uart_port);
    if (pos != -1) {

        int read_len = uart_read_bytes(esp_gps->uart_port, esp_gps->buffer, pos + 1, 100 / portTICK_PERIOD_MS);

        esp_gps->buffer[read_len] = '\0';

        if (gps_decode(esp_gps, read_len + 1) != ESP_OK) {
            ESP_LOGW(GPS_TAG, "GPS decode line failed");
        }
    } else {
        ESP_LOGW(GPS_TAG, "Pattern Queue Size too small");
        uart_flush_input(esp_gps->uart_port);
    }
}
