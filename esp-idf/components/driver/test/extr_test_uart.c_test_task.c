
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xSemaphoreHandle ;


 int UART_NUM1 ;
 int exit_flag ;
 int free (char*) ;
 scalar_t__ malloc (int) ;
 int uart_tx_chars (int ,char*,int) ;
 int uart_wait_tx_done (int ,int ) ;
 int vTaskDelete (int *) ;
 int xSemaphoreGive (int ) ;

__attribute__((used)) static void test_task(void *pvParameters)
{
    xSemaphoreHandle *sema = (xSemaphoreHandle *) pvParameters;
    char* data = (char *) malloc(256);

    while (exit_flag == 0) {
        uart_tx_chars(UART_NUM1, data, 256);

        uart_wait_tx_done(UART_NUM1, 0);
    }

    free(data);
    xSemaphoreGive(*sema);
    vTaskDelete(((void*)0));
}
