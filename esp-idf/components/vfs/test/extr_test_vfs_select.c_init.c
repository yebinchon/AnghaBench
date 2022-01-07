
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int loopback; } ;
struct TYPE_4__ {TYPE_1__ conf0; } ;


 int O_RDWR ;
 int TEST_ASSERT_NOT_EQUAL_MESSAGE (int,int,char*) ;
 TYPE_2__ UART1 ;
 int esp_vfs_dev_uart_use_driver (int) ;
 int open (char*,int ) ;
 int socket_init () ;
 int test_case_uses_tcpip () ;
 int uart1_init () ;

__attribute__((used)) static void init(int *uart_fd, int *socket_fd)
{
    test_case_uses_tcpip();

    uart1_init();
    UART1.conf0.loopback = 1;

    *uart_fd = open("/dev/uart/1", O_RDWR);
    TEST_ASSERT_NOT_EQUAL_MESSAGE(*uart_fd, -1, "Cannot open UART");

    esp_vfs_dev_uart_use_driver(1);

    *socket_fd = socket_init();
}
