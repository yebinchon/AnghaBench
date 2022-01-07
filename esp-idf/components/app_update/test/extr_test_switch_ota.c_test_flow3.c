
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int subtype; } ;
typedef TYPE_1__ esp_partition_t ;


 int CORR_CRC_2_SECTOR_OTA_DATA ;
 int ESP_LOGI (int ,char*,...) ;
 int ESP_PARTITION_SUBTYPE_APP_FACTORY ;
 int ESP_PARTITION_SUBTYPE_APP_OTA_0 ;
 int ESP_PARTITION_SUBTYPE_APP_OTA_1 ;
 int TAG ;
 int TEST_ASSERT_EQUAL (int ,int ) ;
 int TEST_FAIL_MESSAGE (char*) ;
 int boot_count ;
 int copy_current_app_to_next_part (TYPE_1__ const*,int ) ;
 int copy_current_app_to_next_part_and_reboot () ;
 int corrupt_ota_data (int ) ;
 int erase_ota_data () ;
 int get_next_update_partition () ;
 TYPE_1__* get_running_firmware () ;
 int mark_app_valid () ;
 int reboot_as_deep_sleep () ;

__attribute__((used)) static void test_flow3(void)
{
    boot_count++;
    ESP_LOGI(TAG, "boot count %d", boot_count);
    const esp_partition_t *cur_app = get_running_firmware();
    switch (boot_count) {
        case 2:
            ESP_LOGI(TAG, "Factory");
            TEST_ASSERT_EQUAL(ESP_PARTITION_SUBTYPE_APP_FACTORY, cur_app->subtype);
            copy_current_app_to_next_part_and_reboot();
            break;
        case 3:
            ESP_LOGI(TAG, "OTA0");
            TEST_ASSERT_EQUAL(ESP_PARTITION_SUBTYPE_APP_OTA_0, cur_app->subtype);
            mark_app_valid();
            copy_current_app_to_next_part_and_reboot();
            break;
        case 4:
            ESP_LOGI(TAG, "OTA1");
            TEST_ASSERT_EQUAL(ESP_PARTITION_SUBTYPE_APP_OTA_1, cur_app->subtype);
            mark_app_valid();
            copy_current_app_to_next_part(cur_app, get_next_update_partition());
            corrupt_ota_data(CORR_CRC_2_SECTOR_OTA_DATA);
            reboot_as_deep_sleep();
            break;
        case 5:
            ESP_LOGI(TAG, "OTA0");
            TEST_ASSERT_EQUAL(ESP_PARTITION_SUBTYPE_APP_OTA_0, cur_app->subtype);
            erase_ota_data();
            break;
        default:
            erase_ota_data();
            TEST_FAIL_MESSAGE("Unexpected stage");
            break;
    }
}
