
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int baud_rate; int flow_ctrl; int stop_bits; int parity; int data_bits; } ;
typedef TYPE_1__ uart_config_t ;


 int UART_DATA_8_BITS ;
 int UART_HW_FLOWCTRL_DISABLE ;
 int UART_NUM_1 ;
 int UART_PARITY_DISABLE ;
 int UART_STOP_BITS_1 ;
 int uart_driver_install (int ,int,int,int ,int *,int ) ;
 int uart_param_config (int ,TYPE_1__*) ;

__attribute__((used)) static void uart1_init(void)
{
    uart_config_t uart_config = {
        .baud_rate = 115200,
        .data_bits = UART_DATA_8_BITS,
        .parity = UART_PARITY_DISABLE,
        .stop_bits = UART_STOP_BITS_1,
        .flow_ctrl = UART_HW_FLOWCTRL_DISABLE
    };
    uart_param_config(UART_NUM_1, &uart_config);
    uart_driver_install(UART_NUM_1, 256, 256, 0, ((void*)0), 0);
}
