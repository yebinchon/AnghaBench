
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ESP_LOGI (int ,char*) ;
 int TAG ;
 int nimble_port_freertos_deinit () ;
 int nimble_port_run () ;

void
nimble_host_task(void *param)
{

    ESP_LOGI(TAG, "BLE Host Task Started");
    nimble_port_run();

    nimble_port_freertos_deinit();
}
