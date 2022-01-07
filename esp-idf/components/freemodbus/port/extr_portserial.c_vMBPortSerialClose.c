
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ESP_ERROR_CHECK (int ) ;
 int uart_driver_delete (int ) ;
 int ucUartNumber ;
 int vTaskDelete (int ) ;
 int vTaskSuspend (int ) ;
 int xMbTaskHandle ;

void vMBPortSerialClose(void)
{
    (void)vTaskSuspend(xMbTaskHandle);
    (void)vTaskDelete(xMbTaskHandle);
    ESP_ERROR_CHECK(uart_driver_delete(ucUartNumber));
}
