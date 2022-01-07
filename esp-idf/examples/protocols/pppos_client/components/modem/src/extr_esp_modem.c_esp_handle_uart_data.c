
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int buffer; int ppp; int uart_port; } ;
typedef TYPE_1__ esp_modem_dte_t ;


 int ESP_MODEM_LINE_BUFFER_SIZE ;
 size_t MIN (int ,size_t) ;
 int portMAX_DELAY ;
 int pppos_input_tcpip (int ,int ,size_t) ;
 int uart_get_buffered_data_len (int ,size_t*) ;
 size_t uart_read_bytes (int ,int ,size_t,int ) ;

__attribute__((used)) static void esp_handle_uart_data(esp_modem_dte_t *esp_dte)
{
    size_t length = 0;
    uart_get_buffered_data_len(esp_dte->uart_port, &length);
    length = MIN(ESP_MODEM_LINE_BUFFER_SIZE, length);
    length = uart_read_bytes(esp_dte->uart_port, esp_dte->buffer, length, portMAX_DELAY);

    if (length) {
        pppos_input_tcpip(esp_dte->ppp, esp_dte->buffer, length);
    }
}
