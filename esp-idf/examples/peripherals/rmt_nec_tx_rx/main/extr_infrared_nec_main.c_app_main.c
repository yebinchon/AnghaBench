
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rmt_example_nec_rx_task ;
 int rmt_example_nec_tx_task ;
 int xTaskCreate (int ,char*,int,int *,int,int *) ;

void app_main(void)
{
    xTaskCreate(rmt_example_nec_rx_task, "rmt_nec_rx_task", 2048, ((void*)0), 10, ((void*)0));
    xTaskCreate(rmt_example_nec_tx_task, "rmt_nec_tx_task", 2048, ((void*)0), 10, ((void*)0));
}
