
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_partition_t ;


 int copy_current_app_to_next_part (int const*,int ) ;
 int * esp_ota_get_running_partition () ;
 int get_next_update_partition () ;
 int reboot_as_deep_sleep () ;

__attribute__((used)) static void copy_current_app_to_next_part_and_reboot(void)
{
    const esp_partition_t *cur_app = esp_ota_get_running_partition();
    copy_current_app_to_next_part(cur_app, get_next_update_partition());
    reboot_as_deep_sleep();
}
