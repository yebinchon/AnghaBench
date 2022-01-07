
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_partition_t ;
typedef int esp_ota_handle_t ;


 int OTA_SIZE_UNKNOWN ;
 int TEST_ASSERT_NOT_NULL (int const*) ;
 int TEST_ESP_OK (int ) ;
 int copy_app_partition (int ,int const*) ;
 int esp_ota_begin (int const*,int ,int *) ;
 int esp_ota_end (int ) ;
 int * esp_ota_get_next_update_partition (int *) ;
 int esp_ota_set_boot_partition (int const*) ;
 int * get_running_firmware () ;

__attribute__((used)) static const esp_partition_t* app_update(void)
{
    const esp_partition_t *cur_app = get_running_firmware();
    const esp_partition_t* update_partition = esp_ota_get_next_update_partition(((void*)0));
    TEST_ASSERT_NOT_NULL(update_partition);
    esp_ota_handle_t update_handle = 0;
    TEST_ESP_OK(esp_ota_begin(update_partition, OTA_SIZE_UNKNOWN, &update_handle));
    copy_app_partition(update_handle, cur_app);
    TEST_ESP_OK(esp_ota_end(update_handle));
    TEST_ESP_OK(esp_ota_set_boot_partition(update_partition));
    return update_partition;
}
