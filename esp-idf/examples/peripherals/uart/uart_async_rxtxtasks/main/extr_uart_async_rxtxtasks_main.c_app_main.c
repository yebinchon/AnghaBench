
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ configMAX_PRIORITIES ;
 int init () ;
 int rx_task ;
 int tx_task ;
 int xTaskCreate (int ,char*,int,int *,scalar_t__,int *) ;

void app_main(void)
{
    init();
    xTaskCreate(rx_task, "uart_rx_task", 1024*2, ((void*)0), configMAX_PRIORITIES, ((void*)0));
    xTaskCreate(tx_task, "uart_tx_task", 1024*2, ((void*)0), configMAX_PRIORITIES-1, ((void*)0));
}
