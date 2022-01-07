
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ESP_LOGI (int ,char*) ;
 int TAG ;
 int boot_count ;
 int erase_ota_data () ;
 int reboot_as_deep_sleep () ;

__attribute__((used)) static void start_test(void)
{
    ESP_LOGI(TAG, "boot count 1 - reset");
    boot_count = 1;
    erase_ota_data();
    reboot_as_deep_sleep();
}
