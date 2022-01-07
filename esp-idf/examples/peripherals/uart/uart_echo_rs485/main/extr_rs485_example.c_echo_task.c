
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int rx_flow_ctrl_thresh; int flow_ctrl; int stop_bits; int parity; int data_bits; int baud_rate; } ;
typedef TYPE_1__ uart_config_t ;
typedef int prefix ;


 int BAUD_RATE ;
 int BUF_SIZE ;
 int ECHO_TEST_CTS ;
 int ECHO_TEST_RTS ;
 int ECHO_TEST_RXD ;
 int ECHO_TEST_TXD ;
 int ECHO_UART_PORT ;
 int ESP_LOGI (int ,char*,...) ;
 int ESP_LOG_INFO ;
 int PACKET_READ_TICS ;
 int TAG ;
 int UART_DATA_8_BITS ;
 int UART_HW_FLOWCTRL_DISABLE ;
 int UART_MODE_RS485_HALF_DUPLEX ;
 int UART_PARITY_DISABLE ;
 int UART_STOP_BITS_1 ;
 int esp_log_level_set (int ,int ) ;
 scalar_t__ malloc (int) ;
 int printf (char*,...) ;
 int uart_driver_install (int const,int,int ,int ,int *,int ) ;
 int uart_param_config (int const,TYPE_1__*) ;
 int uart_read_bytes (int const,int*,int,int ) ;
 int uart_set_mode (int const,int ) ;
 int uart_set_pin (int const,int ,int ,int ,int ) ;
 int uart_write_bytes (int const,char const*,int) ;

__attribute__((used)) static void echo_task(void *arg)
{
    const int uart_num = ECHO_UART_PORT;
    uart_config_t uart_config = {
        .baud_rate = BAUD_RATE,
        .data_bits = UART_DATA_8_BITS,
        .parity = UART_PARITY_DISABLE,
        .stop_bits = UART_STOP_BITS_1,
        .flow_ctrl = UART_HW_FLOWCTRL_DISABLE,
        .rx_flow_ctrl_thresh = 122,
    };


    esp_log_level_set(TAG, ESP_LOG_INFO);

    ESP_LOGI(TAG, "Start RS485 application test and configure UART.");


    uart_param_config(uart_num, &uart_config);

    ESP_LOGI(TAG, "UART set pins, mode and install driver.");

    uart_set_pin(uart_num, ECHO_TEST_TXD, ECHO_TEST_RXD, ECHO_TEST_RTS, ECHO_TEST_CTS);



    uart_driver_install(uart_num, BUF_SIZE * 2, 0, 0, ((void*)0), 0);


    uart_set_mode(uart_num, UART_MODE_RS485_HALF_DUPLEX);


    uint8_t* data = (uint8_t*) malloc(BUF_SIZE);

    ESP_LOGI(TAG, "UART start recieve loop.\r\n");
    uart_write_bytes(uart_num, "Start RS485 UART test.\r\n", 24);

    while(1) {

        int len = uart_read_bytes(uart_num, data, BUF_SIZE, PACKET_READ_TICS);


        if (len > 0) {
            uart_write_bytes(uart_num, "\r\n", 2);
            char prefix[] = "RS485 Received: [";
            uart_write_bytes(uart_num, prefix, (sizeof(prefix) - 1));

            ESP_LOGI(TAG, "Received %u bytes:", len);
            printf("[ ");
            for (int i = 0; i < len; i++) {
                printf("0x%.2X ", (uint8_t)data[i]);
                uart_write_bytes(uart_num, (const char*)&data[i], 1);

                if (data[i] == '\r') {
                    uart_write_bytes(uart_num, "\n", 1);
                }
            }
            printf("] \n");
            uart_write_bytes(uart_num, "]\r\n", 3);
        } else {

            uart_write_bytes(uart_num, ".", 1);
        }
    }
}
