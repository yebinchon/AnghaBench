
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
 int uart_driver_delete (int ) ;
 int uart_fd ;

__attribute__((used)) static void uart1_deinit(void)
{
    close(uart_fd);
    uart_fd = -1;
    uart_driver_delete(UART_NUM_1);
    UART1.conf0.loopback = 0;
}
