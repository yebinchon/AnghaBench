
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ESP_LOGI (int ,char*,char*) ;
 int TAG ;
 int example_ble_mesh_send_gen_onoff_set () ;

__attribute__((used)) static void button_tap_cb(void* arg)
{
    ESP_LOGI(TAG, "tap cb (%s)", (char *)arg);

    example_ble_mesh_send_gen_onoff_set();
}
