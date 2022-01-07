
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; int tv_usec; } ;
typedef int fd_set ;


 int ESP_LOGE (int ,char*,int ) ;
 int ESP_LOGI (int ,char*) ;
 int FD_SET (int ,int *) ;
 int FD_ZERO (int *) ;
 scalar_t__ MAX (int ,int ) ;
 int TAG ;
 int check_and_print (int ,int *,char*) ;
 int errno ;
 int select (scalar_t__,int *,int *,int *,struct timeval*) ;
 int socket_fd ;
 int uart_fd ;
 int vTaskDelete (int *) ;

__attribute__((used)) static void select_task(void *param)
{
    while (1) {
        int s;
        fd_set rfds;
        struct timeval tv = {
            .tv_sec = 1,
            .tv_usec = 0,
        };

        FD_ZERO(&rfds);
        FD_SET(uart_fd, &rfds);
        FD_SET(socket_fd, &rfds);

        s = select(MAX(uart_fd, socket_fd) + 1, &rfds, ((void*)0), ((void*)0), &tv);

        if (s < 0) {
            ESP_LOGE(TAG, "Select failed: errno %d", errno);
        } else if (s == 0) {
            ESP_LOGI(TAG, "Timeout has been reached and nothing has been received");
        } else {
            check_and_print(socket_fd, &rfds, "socket");
            check_and_print(uart_fd, &rfds, "UART1");
        }
    }

    vTaskDelete(((void*)0));
}
