
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xSemaphoreHandle ;
typedef scalar_t__ uint32_t ;


 scalar_t__ REG_READ (int ) ;
 int UART_DATE_REG (int ) ;
 int apb_test_result ;
 int exit_flag ;
 int vTaskDelete (int *) ;
 int xSemaphoreGive (int ) ;

__attribute__((used)) static void accessAPB(void *pvParameters)
{
    xSemaphoreHandle *sema = (xSemaphoreHandle *) pvParameters;
    uint32_t uart_date = REG_READ(UART_DATE_REG(0));

    apb_test_result = 1;


    while (exit_flag == 0) {
        if (uart_date != REG_READ(UART_DATE_REG(0))) {
            apb_test_result = 0;
            break;
        }
    }

    xSemaphoreGive(*sema);
    vTaskDelete(((void*)0));
}
