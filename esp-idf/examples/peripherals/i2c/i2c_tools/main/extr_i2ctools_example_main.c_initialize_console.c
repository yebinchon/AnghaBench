
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int use_ref_tick; int stop_bits; int parity; int data_bits; int baud_rate; } ;
typedef TYPE_1__ uart_config_t ;
typedef int linenoiseHintsCallback ;
struct TYPE_6__ {int hint_color; int max_cmdline_length; int max_cmdline_args; } ;
typedef TYPE_2__ esp_console_config_t ;


 int CONFIG_ESP_CONSOLE_UART_BAUDRATE ;
 int CONFIG_ESP_CONSOLE_UART_NUM ;
 int CONFIG_EXAMPLE_MAX_CMD_ARGUMENTS ;
 int CONFIG_EXAMPLE_MAX_CMD_LENGTH ;
 int ESP_ERROR_CHECK (int ) ;
 int ESP_LINE_ENDINGS_CR ;
 int ESP_LINE_ENDINGS_CRLF ;
 int HISTORY_PATH ;
 int LOG_COLOR_CYAN ;
 int UART_DATA_8_BITS ;
 int UART_PARITY_DISABLE ;
 int UART_STOP_BITS_1 ;
 int _IONBF ;
 int atoi (int ) ;
 int esp_console_get_completion ;
 int esp_console_get_hint ;
 int esp_console_init (TYPE_2__*) ;
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
 int uart_param_config (int ,TYPE_1__ const*) ;

__attribute__((used)) static void initialize_console(void)
{

    setvbuf(stdin, ((void*)0), _IONBF, 0);


    esp_vfs_dev_uart_set_rx_line_endings(ESP_LINE_ENDINGS_CR);

    esp_vfs_dev_uart_set_tx_line_endings(ESP_LINE_ENDINGS_CRLF);




    const uart_config_t uart_config = {
        .baud_rate = CONFIG_ESP_CONSOLE_UART_BAUDRATE,
        .data_bits = UART_DATA_8_BITS,
        .parity = UART_PARITY_DISABLE,
        .stop_bits = UART_STOP_BITS_1,
        .use_ref_tick = 1
    };
    ESP_ERROR_CHECK(uart_param_config(CONFIG_ESP_CONSOLE_UART_NUM, &uart_config));


    ESP_ERROR_CHECK(uart_driver_install(CONFIG_ESP_CONSOLE_UART_NUM,
                                        256, 0, 0, ((void*)0), 0));


    esp_vfs_dev_uart_use_driver(CONFIG_ESP_CONSOLE_UART_NUM);


    esp_console_config_t console_config = {
        .max_cmdline_args = CONFIG_EXAMPLE_MAX_CMD_ARGUMENTS,
        .max_cmdline_length = CONFIG_EXAMPLE_MAX_CMD_LENGTH,



    };
    ESP_ERROR_CHECK(esp_console_init(&console_config));


    linenoiseSetMultiLine(1);


    linenoiseSetCompletionCallback(&esp_console_get_completion);
    linenoiseSetHintsCallback((linenoiseHintsCallback *)&esp_console_get_hint);


    linenoiseHistorySetMaxLen(100);





}
