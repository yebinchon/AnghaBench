
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int linenoiseHintsCallback ;
struct TYPE_3__ {int max_cmdline_args; int max_cmdline_length; int hint_color; } ;
typedef TYPE_1__ esp_console_config_t ;


 int CONFIG_ESP_CONSOLE_UART_NUM ;
 int ESP_ERROR_CHECK (int ) ;
 int ESP_LINE_ENDINGS_CR ;
 int ESP_LINE_ENDINGS_CRLF ;
 int HISTORY_FILE_PATH ;
 int LOG_COLOR_CYAN ;
 int _IONBF ;
 int atoi (int ) ;
 int esp_console_get_completion ;
 int esp_console_get_hint ;
 int esp_console_init (TYPE_1__*) ;
 int esp_vfs_dev_uart_set_rx_line_endings (int ) ;
 int esp_vfs_dev_uart_set_tx_line_endings (int ) ;
 int esp_vfs_dev_uart_use_driver (int ) ;
 int linenoiseHistoryLoad (int ) ;
 int linenoiseHistorySetMaxLen (int) ;
 int linenoiseSetCompletionCallback (int *) ;
 int linenoiseSetHintsCallback (int *) ;
 int linenoiseSetMultiLine (int) ;
 int setvbuf (int ,int *,int ,int ) ;
 int stdin ;
 int uart_driver_install (int ,int,int ,int ,int *,int ) ;

__attribute__((used)) static void initialize_console(void)
{

    setvbuf(stdin, ((void*)0), _IONBF, 0);


    esp_vfs_dev_uart_set_rx_line_endings(ESP_LINE_ENDINGS_CR);

    esp_vfs_dev_uart_set_tx_line_endings(ESP_LINE_ENDINGS_CRLF);


    ESP_ERROR_CHECK(uart_driver_install(CONFIG_ESP_CONSOLE_UART_NUM,
                                        256, 0, 0, ((void*)0), 0));


    esp_vfs_dev_uart_use_driver(CONFIG_ESP_CONSOLE_UART_NUM);


    esp_console_config_t console_config = {
        .max_cmdline_args = 8,
        .max_cmdline_length = 256,



    };
    ESP_ERROR_CHECK(esp_console_init(&console_config));





    linenoiseSetMultiLine(1);


    linenoiseSetCompletionCallback(&esp_console_get_completion);
    linenoiseSetHintsCallback((linenoiseHintsCallback *)&esp_console_get_hint);


    linenoiseHistorySetMaxLen(100);





}
