
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ loopback; } ;
struct TYPE_4__ {TYPE_1__ conf0; } ;


 TYPE_2__ UART1 ;
 int UART_NUM_1 ;
 int close (int) ;
 int esp_vfs_dev_uart_use_nonblocking (int) ;
 int uart_driver_delete (int ) ;

__attribute__((used)) static void deinit(int uart_fd, int socket_fd)
{
    esp_vfs_dev_uart_use_nonblocking(1);
    close(uart_fd);
    UART1.conf0.loopback = 0;
    uart_driver_delete(UART_NUM_1);

    close(socket_fd);
}
