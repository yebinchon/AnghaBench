
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int baud_rate; int rx_flow_ctrl_thresh; int flow_ctrl; int stop_bits; int parity; int data_bits; } ;
typedef TYPE_1__ uart_config_t ;


 int UART_DATA_8_BITS ;
 int UART_HW_FLOWCTRL_RTS ;
 scalar_t__ UART_NUM_0 ;
 int UART_PARITY_DISABLE ;
 int UART_PIN_NO_CHANGE ;
 int UART_STOP_BITS_1 ;
 int spp_uart_queue ;
 int uart_driver_install (scalar_t__,int,int,int,int *,int ) ;
 int uart_param_config (scalar_t__,TYPE_1__*) ;
 int uart_set_pin (scalar_t__,int ,int ,int ,int ) ;
 int uart_task ;
 int xTaskCreate (int ,char*,int,void*,int,int *) ;

__attribute__((used)) static void spp_uart_init(void)
{
    uart_config_t uart_config = {
        .baud_rate = 115200,
        .data_bits = UART_DATA_8_BITS,
        .parity = UART_PARITY_DISABLE,
        .stop_bits = UART_STOP_BITS_1,
        .flow_ctrl = UART_HW_FLOWCTRL_RTS,
        .rx_flow_ctrl_thresh = 122,
    };


    uart_param_config(UART_NUM_0, &uart_config);

    uart_set_pin(UART_NUM_0, UART_PIN_NO_CHANGE, UART_PIN_NO_CHANGE, UART_PIN_NO_CHANGE, UART_PIN_NO_CHANGE);

    uart_driver_install(UART_NUM_0, 4096, 8192, 10,&spp_uart_queue,0);
    xTaskCreate(uart_task, "uTask", 2048, (void*)UART_NUM_0, 8, ((void*)0));
}
