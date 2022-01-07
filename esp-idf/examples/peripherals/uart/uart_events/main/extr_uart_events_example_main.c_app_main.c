
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int baud_rate; int flow_ctrl; int stop_bits; int parity; int data_bits; } ;
typedef TYPE_1__ uart_config_t ;


 int BUF_SIZE ;
 int ESP_LOG_INFO ;
 int EX_UART_NUM ;
 int PATTERN_CHR_NUM ;
 int TAG ;
 int UART_DATA_8_BITS ;
 int UART_HW_FLOWCTRL_DISABLE ;
 int UART_PARITY_DISABLE ;
 int UART_PIN_NO_CHANGE ;
 int UART_STOP_BITS_1 ;
 int esp_log_level_set (int ,int ) ;
 int uart0_queue ;
 int uart_driver_install (int ,int,int,int,int *,int ) ;
 int uart_enable_pattern_det_baud_intr (int ,char,int ,int,int ,int ) ;
 int uart_event_task ;
 int uart_param_config (int ,TYPE_1__*) ;
 int uart_pattern_queue_reset (int ,int) ;
 int uart_set_pin (int ,int ,int ,int ,int ) ;
 int xTaskCreate (int ,char*,int,int *,int,int *) ;

void app_main(void)
{
    esp_log_level_set(TAG, ESP_LOG_INFO);



    uart_config_t uart_config = {
        .baud_rate = 115200,
        .data_bits = UART_DATA_8_BITS,
        .parity = UART_PARITY_DISABLE,
        .stop_bits = UART_STOP_BITS_1,
        .flow_ctrl = UART_HW_FLOWCTRL_DISABLE
    };
    uart_param_config(EX_UART_NUM, &uart_config);


    esp_log_level_set(TAG, ESP_LOG_INFO);

    uart_set_pin(EX_UART_NUM, UART_PIN_NO_CHANGE, UART_PIN_NO_CHANGE, UART_PIN_NO_CHANGE, UART_PIN_NO_CHANGE);

    uart_driver_install(EX_UART_NUM, BUF_SIZE * 2, BUF_SIZE * 2, 20, &uart0_queue, 0);


    uart_enable_pattern_det_baud_intr(EX_UART_NUM, '+', PATTERN_CHR_NUM, 9, 0, 0);

    uart_pattern_queue_reset(EX_UART_NUM, 20);


    xTaskCreate(uart_event_task, "uart_event_task", 2048, ((void*)0), 12, ((void*)0));
}
