
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ESP_LOGI (int ,char*) ;
 int nimble_port_freertos_deinit () ;
 int nimble_port_run () ;
 int tag ;

void bleprph_host_task(void *param)
{
    ESP_LOGI(tag, "BLE Host Task Started");

    nimble_port_run();

    nimble_port_freertos_deinit();
}
