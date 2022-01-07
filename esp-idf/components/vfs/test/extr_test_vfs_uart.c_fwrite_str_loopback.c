
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int loopback; } ;
struct TYPE_4__ {TYPE_1__ conf0; } ;


 int CONFIG_ESP_CONSOLE_UART_NUM ;
 TYPE_2__ UART0 ;
 int fflush (int ) ;
 int fwrite (char const*,int,size_t,int ) ;
 int portTICK_PERIOD_MS ;
 int stdout ;
 int uart_tx_wait_idle (int ) ;
 int vTaskDelay (int) ;

__attribute__((used)) static void fwrite_str_loopback(const char* str, size_t size)
{
    uart_tx_wait_idle(CONFIG_ESP_CONSOLE_UART_NUM);
    UART0.conf0.loopback = 1;
    fwrite(str, 1, size, stdout);
    fflush(stdout);
    uart_tx_wait_idle(CONFIG_ESP_CONSOLE_UART_NUM);
    vTaskDelay(2 / portTICK_PERIOD_MS);
    UART0.conf0.loopback = 0;
}
