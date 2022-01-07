
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int baud_rate; int flow_ctrl; int stop_bits; int parity; int data_bits; } ;
typedef TYPE_1__ uart_config_t ;


 int RXD_PIN ;
 int RX_BUF_SIZE ;
 int TXD_PIN ;
 int UART_DATA_8_BITS ;
 int UART_HW_FLOWCTRL_DISABLE ;
 int UART_NUM_1 ;
 int UART_PARITY_DISABLE ;
 int UART_PIN_NO_CHANGE ;
 int UART_STOP_BITS_1 ;
 int uart_driver_install (int ,int,int ,int ,int *,int ) ;
 int uart_param_config (int ,TYPE_1__ const*) ;
 int uart_set_pin (int ,int ,int ,int ,int ) ;

void init(void) {
    const uart_config_t uart_config = {
        .baud_rate = 115200,
        .data_bits = UART_DATA_8_BITS,
        .parity = UART_PARITY_DISABLE,
        .stop_bits = UART_STOP_BITS_1,
        .flow_ctrl = UART_HW_FLOWCTRL_DISABLE
    };
    uart_param_config(UART_NUM_1, &uart_config);
    uart_set_pin(UART_NUM_1, TXD_PIN, RXD_PIN, UART_PIN_NO_CHANGE, UART_PIN_NO_CHANGE);

    uart_driver_install(UART_NUM_1, RX_BUF_SIZE * 2, 0, 0, ((void*)0), 0);
}
