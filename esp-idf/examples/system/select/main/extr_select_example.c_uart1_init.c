
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int baud_rate; int flow_ctrl; int stop_bits; int parity; int data_bits; } ;
typedef TYPE_2__ uart_config_t ;
struct TYPE_5__ {int loopback; } ;
struct TYPE_7__ {TYPE_1__ conf0; } ;


 int ESP_LOGE (int ,char*) ;
 int O_NONBLOCK ;
 int O_RDWR ;
 int TAG ;
 TYPE_4__ UART1 ;
 int UART_DATA_8_BITS ;
 int UART_HW_FLOWCTRL_DISABLE ;
 int UART_NUM_1 ;
 int UART_PARITY_DISABLE ;
 int UART_STOP_BITS_1 ;
 int esp_vfs_dev_uart_use_driver (int) ;
 int open (char*,int) ;
 int uart1_deinit () ;
 int uart_driver_install (int ,int,int ,int ,int *,int ) ;
 int uart_fd ;
 int uart_param_config (int ,TYPE_2__*) ;

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
    uart_driver_install(UART_NUM_1, 256, 0, 0, ((void*)0), 0);
    UART1.conf0.loopback = 1;

    if ((uart_fd = open("/dev/uart/1", O_RDWR | O_NONBLOCK)) == -1) {
        ESP_LOGE(TAG, "Cannot open UART1");
        uart1_deinit();
    }

    esp_vfs_dev_uart_use_driver(1);
}
