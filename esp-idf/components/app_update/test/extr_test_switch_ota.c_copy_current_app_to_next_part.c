
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int address; int subtype; } ;
typedef TYPE_1__ esp_partition_t ;
typedef int esp_ota_handle_t ;


 int ESP_LOGI (int ,char*,int ,int ) ;
 int OTA_SIZE_UNKNOWN ;
 int TAG ;
 int TEST_ASSERT_NOT_EQUAL (int *,TYPE_1__ const*) ;
 int TEST_ESP_OK (int ) ;
 int copy_app_partition (int ,TYPE_1__ const*) ;
 int esp_ota_begin (TYPE_1__ const*,int ,int *) ;
 int esp_ota_end (int ) ;
 int esp_ota_get_next_update_partition (int *) ;
 int esp_ota_set_boot_partition (TYPE_1__ const*) ;

__attribute__((used)) static void copy_current_app_to_next_part(const esp_partition_t *cur_app_partition, const esp_partition_t *next_app_partition)
{
    esp_ota_get_next_update_partition(((void*)0));
    TEST_ASSERT_NOT_EQUAL(((void*)0), next_app_partition);
    ESP_LOGI(TAG, "Writing to partition subtype %d at offset 0x%x", next_app_partition->subtype, next_app_partition->address);

    esp_ota_handle_t update_handle = 0;
    TEST_ESP_OK(esp_ota_begin(next_app_partition, OTA_SIZE_UNKNOWN, &update_handle));

    copy_app_partition(update_handle, cur_app_partition);

    TEST_ESP_OK(esp_ota_end(update_handle));
    TEST_ESP_OK(esp_ota_set_boot_partition(next_app_partition));
}
