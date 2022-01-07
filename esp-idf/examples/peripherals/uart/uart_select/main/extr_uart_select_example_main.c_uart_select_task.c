
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int baud_rate; int flow_ctrl; int stop_bits; int parity; int data_bits; } ;
typedef TYPE_1__ uart_config_t ;
struct timeval {int tv_sec; int tv_usec; } ;
typedef int fd_set ;


 int ESP_LOGE (int ,char*,...) ;
 int ESP_LOGI (int ,char*,...) ;
 scalar_t__ FD_ISSET (int,int *) ;
 int FD_SET (int,int *) ;
 int FD_ZERO (int *) ;
 int O_RDWR ;
 int TAG ;
 int UART_DATA_8_BITS ;
 int UART_HW_FLOWCTRL_DISABLE ;
 int UART_NUM_0 ;
 int UART_PARITY_DISABLE ;
 int UART_STOP_BITS_1 ;
 int close (int) ;
 int errno ;
 int esp_vfs_dev_uart_use_driver (int ) ;
 int open (char*,int ) ;
 int portTICK_PERIOD_MS ;
 scalar_t__ read (int,char*,int) ;
 int select (int,int *,int *,int *,struct timeval*) ;
 int uart_driver_install (int ,int,int ,int ,int *,int ) ;
 int uart_param_config (int ,TYPE_1__*) ;
 int vTaskDelay (int) ;
 int vTaskDelete (int *) ;

__attribute__((used)) static void uart_select_task(void *arg)
{
    uart_config_t uart_config = {
        .baud_rate = 115200,
        .data_bits = UART_DATA_8_BITS,
        .parity = UART_PARITY_DISABLE,
        .stop_bits = UART_STOP_BITS_1,
        .flow_ctrl = UART_HW_FLOWCTRL_DISABLE
    };
    uart_param_config(UART_NUM_0, &uart_config);
    uart_driver_install(UART_NUM_0, 2*1024, 0, 0, ((void*)0), 0);

    while (1) {
        int fd;

        if ((fd = open("/dev/uart/0", O_RDWR)) == -1) {
            ESP_LOGE(TAG, "Cannot open UART");
            vTaskDelay(5000 / portTICK_PERIOD_MS);
            continue;
        }


        esp_vfs_dev_uart_use_driver(0);

        while (1) {
            int s;
            fd_set rfds;
            struct timeval tv = {
                .tv_sec = 5,
                .tv_usec = 0,
            };

            FD_ZERO(&rfds);
            FD_SET(fd, &rfds);

            s = select(fd + 1, &rfds, ((void*)0), ((void*)0), &tv);

            if (s < 0) {
                ESP_LOGE(TAG, "Select failed: errno %d", errno);
                break;
            } else if (s == 0) {
                ESP_LOGI(TAG, "Timeout has been reached and nothing has been received");
            } else {
                if (FD_ISSET(fd, &rfds)) {
                    char buf;
                    if (read(fd, &buf, 1) > 0) {
                        ESP_LOGI(TAG, "Received: %c", buf);



                    } else {
                        ESP_LOGE(TAG, "UART read error");
                        break;
                    }
                } else {
                    ESP_LOGE(TAG, "No FD has been set in select()");
                    break;
                }
            }
        }

        close(fd);
    }

    vTaskDelete(((void*)0));
}
