
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uart_port_t ;
typedef int esp_err_t ;


 scalar_t__ CONFIG_ESP_CONSOLE_UART_NUM ;
 int ESP_ERROR_CHECK (int ) ;
 int ESP_LINE_ENDINGS_CR ;
 int ESP_LINE_ENDINGS_CRLF ;
 int ESP_OK ;
 int _IONBF ;
 int esp_vfs_dev_uart_set_rx_line_endings (int ) ;
 int esp_vfs_dev_uart_set_tx_line_endings (int ) ;
 int esp_vfs_dev_uart_use_driver (scalar_t__) ;
 int setvbuf (int ,int *,int ,int ) ;
 int stdin ;
 int stdout ;
 int uart_driver_install (int ,int,int ,int ,int *,int ) ;

esp_err_t example_configure_stdin_stdout(void)
{

    setvbuf(stdin, ((void*)0), _IONBF, 0);
    setvbuf(stdout, ((void*)0), _IONBF, 0);

    ESP_ERROR_CHECK( uart_driver_install( (uart_port_t)CONFIG_ESP_CONSOLE_UART_NUM,
            256, 0, 0, ((void*)0), 0) );

    esp_vfs_dev_uart_use_driver(CONFIG_ESP_CONSOLE_UART_NUM);
    esp_vfs_dev_uart_set_rx_line_endings(ESP_LINE_ENDINGS_CR);

    esp_vfs_dev_uart_set_tx_line_endings(ESP_LINE_ENDINGS_CRLF);
    return ESP_OK;
}
