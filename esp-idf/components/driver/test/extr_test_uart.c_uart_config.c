
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int use_ref_tick; int flow_ctrl; int stop_bits; int parity; int data_bits; int baud_rate; } ;
typedef TYPE_1__ uart_config_t ;


 int BUF_SIZE ;
 int UART1_RX_PIN ;
 int UART1_TX_PIN ;
 int UART_DATA_8_BITS ;
 int UART_HW_FLOWCTRL_DISABLE ;
 int UART_NUM1 ;
 int UART_PARITY_DISABLE ;
 int UART_PIN_NO_CHANGE ;
 int UART_STOP_BITS_1 ;
 int uart_driver_install (int ,int,int,int,int *,int ) ;
 int uart_param_config (int ,TYPE_1__*) ;
 int uart_set_pin (int ,int ,int ,int ,int ) ;

__attribute__((used)) static void uart_config(uint32_t baud_rate, bool use_ref_tick)
{
    uart_config_t uart_config = {
        .baud_rate = baud_rate,
        .data_bits = UART_DATA_8_BITS,
        .parity = UART_PARITY_DISABLE,
        .stop_bits = UART_STOP_BITS_1,
        .flow_ctrl = UART_HW_FLOWCTRL_DISABLE,
        .use_ref_tick = use_ref_tick,
    };
    uart_param_config(UART_NUM1, &uart_config);
    uart_set_pin(UART_NUM1, UART1_TX_PIN, UART1_RX_PIN, UART_PIN_NO_CHANGE, UART_PIN_NO_CHANGE);
    uart_driver_install(UART_NUM1, BUF_SIZE * 2, BUF_SIZE * 2, 20, ((void*)0), 0);
}
