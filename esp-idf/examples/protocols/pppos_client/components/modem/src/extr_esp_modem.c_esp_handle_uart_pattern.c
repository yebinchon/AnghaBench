
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* buffer; int uart_port; } ;
typedef TYPE_1__ esp_modem_dte_t ;


 int ESP_LOGE (int ,char*) ;
 int ESP_LOGW (int ,char*) ;
 int ESP_MODEM_LINE_BUFFER_SIZE ;
 int MODEM_TAG ;
 int esp_dte_handle_line (TYPE_1__*) ;
 int pdMS_TO_TICKS (int) ;
 int uart_flush (int ) ;
 int uart_pattern_pop_pos (int ) ;
 int uart_read_bytes (int ,char*,int,int ) ;

__attribute__((used)) static void esp_handle_uart_pattern(esp_modem_dte_t *esp_dte)
{
    int pos = uart_pattern_pop_pos(esp_dte->uart_port);
    int read_len = 0;
    if (pos != -1) {
        if (pos < ESP_MODEM_LINE_BUFFER_SIZE - 1) {

            read_len = pos + 1;
        } else {
            ESP_LOGW(MODEM_TAG, "ESP Modem Line buffer too small");
            read_len = ESP_MODEM_LINE_BUFFER_SIZE - 1;
        }
        read_len = uart_read_bytes(esp_dte->uart_port, esp_dte->buffer, read_len, pdMS_TO_TICKS(100));
        if (read_len) {

            esp_dte->buffer[read_len] = '\0';

            esp_dte_handle_line(esp_dte);
        } else {
            ESP_LOGE(MODEM_TAG, "uart read bytes failed");
        }
    } else {
        ESP_LOGW(MODEM_TAG, "Pattern Queue Size too small");
        uart_flush(esp_dte->uart_port);
    }
}
