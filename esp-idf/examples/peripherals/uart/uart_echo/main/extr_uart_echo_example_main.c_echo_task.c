
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int baud_rate; int flow_ctrl; int stop_bits; int parity; int data_bits; } ;
typedef TYPE_1__ uart_config_t ;


 int BUF_SIZE ;
 int ECHO_TEST_CTS ;
 int ECHO_TEST_RTS ;
 int ECHO_TEST_RXD ;
 int ECHO_TEST_TXD ;
 int UART_DATA_8_BITS ;
 int UART_HW_FLOWCTRL_DISABLE ;
 int UART_NUM_1 ;
 int UART_PARITY_DISABLE ;
 int UART_STOP_BITS_1 ;
 scalar_t__ malloc (int) ;
 int portTICK_RATE_MS ;
 int uart_driver_install (int ,int,int ,int ,int *,int ) ;
 int uart_param_config (int ,TYPE_1__*) ;
 int uart_read_bytes (int ,int *,int,int) ;
 int uart_set_pin (int ,int ,int ,int ,int ) ;
 int uart_write_bytes (int ,char const*,int) ;

__attribute__((used)) static void echo_task(void *arg)
{


    uart_config_t uart_config = {
        .baud_rate = 115200,
        .data_bits = UART_DATA_8_BITS,
        .parity = UART_PARITY_DISABLE,
        .stop_bits = UART_STOP_BITS_1,
        .flow_ctrl = UART_HW_FLOWCTRL_DISABLE
    };
    uart_param_config(UART_NUM_1, &uart_config);
    uart_set_pin(UART_NUM_1, ECHO_TEST_TXD, ECHO_TEST_RXD, ECHO_TEST_RTS, ECHO_TEST_CTS);
    uart_driver_install(UART_NUM_1, BUF_SIZE * 2, 0, 0, ((void*)0), 0);


    uint8_t *data = (uint8_t *) malloc(BUF_SIZE);

    while (1) {

        int len = uart_read_bytes(UART_NUM_1, data, BUF_SIZE, 20 / portTICK_RATE_MS);

        uart_write_bytes(UART_NUM_1, (const char *) data, len);
    }
}
