
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UART_NUM1 ;
 int UART_TX_DONE_INT_ENA_M ;
 int exit_flag ;
 int uart_disable_intr_mask (int ,int ) ;
 int vTaskDelete (int *) ;

__attribute__((used)) static void test_task2(void *pvParameters)
{
    while (exit_flag == 0) {


        uart_disable_intr_mask(UART_NUM1, UART_TX_DONE_INT_ENA_M);
    }
    vTaskDelete(((void*)0));
}
