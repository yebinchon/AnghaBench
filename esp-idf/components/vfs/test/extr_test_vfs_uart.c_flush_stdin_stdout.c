
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONFIG_ESP_CONSOLE_UART_NUM ;
 int UART_FIFO_LEN ;
 int fflush (int ) ;
 scalar_t__ fread (char*,int,int,int ) ;
 int portTICK_PERIOD_MS ;
 int stdin ;
 int stdout ;
 int uart_tx_wait_idle (int ) ;
 int vTaskDelay (int) ;

__attribute__((used)) static void flush_stdin_stdout(void)
{
    vTaskDelay(10 / portTICK_PERIOD_MS);
    char bitbucket[UART_FIFO_LEN];
    while (fread(bitbucket, 1, UART_FIFO_LEN, stdin) > 0) {
        ;
    }
    fflush(stdout);
    uart_tx_wait_idle(CONFIG_ESP_CONSOLE_UART_NUM);
}
