
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int subtype; } ;
typedef TYPE_1__ esp_partition_t ;
typedef int esp_ota_img_states_t ;


 int ESP_ERR_NOT_SUPPORTED ;
 int ESP_LOGI (int ,char*,...) ;
 int ESP_OTA_IMG_NEW ;
 int ESP_OTA_IMG_PENDING_VERIFY ;
 int ESP_OTA_IMG_UNDEFINED ;
 int ESP_OTA_IMG_VALID ;
 int ESP_PARTITION_SUBTYPE_APP_FACTORY ;
 int ESP_PARTITION_SUBTYPE_APP_OTA_0 ;
 int TAG ;
 int TEST_ASSERT_EQUAL (int ,int) ;
 int TEST_ASSERT_NULL (int ) ;
 int TEST_ESP_ERR (int ,int ) ;
 int TEST_ESP_OK (int ) ;
 int TEST_FAIL_MESSAGE (char*) ;
 TYPE_1__* app_update () ;
 int boot_count ;
 int erase_ota_data () ;
 int esp_ota_get_last_invalid_partition () ;
 int esp_ota_get_state_partition (TYPE_1__ const*,int*) ;
 int esp_ota_mark_app_invalid_rollback_and_reboot () ;
 int esp_ota_mark_app_valid_cancel_rollback () ;
 TYPE_1__* get_running_firmware () ;
 int reboot_as_deep_sleep () ;

__attribute__((used)) static void test_rollback1(void)
{
    boot_count++;
    ESP_LOGI(TAG, "boot count %d", boot_count);
    const esp_partition_t *cur_app = get_running_firmware();
    esp_ota_img_states_t ota_state = 0x5555AAAA;
    const esp_partition_t* update_partition = ((void*)0);
    switch (boot_count) {
        case 2:
            ESP_LOGI(TAG, "Factory");
            TEST_ASSERT_EQUAL(ESP_PARTITION_SUBTYPE_APP_FACTORY, cur_app->subtype);
            TEST_ASSERT_NULL(esp_ota_get_last_invalid_partition());
            TEST_ESP_ERR(ESP_ERR_NOT_SUPPORTED, esp_ota_get_state_partition(cur_app, &ota_state));
            update_partition = app_update();
            TEST_ESP_OK(esp_ota_get_state_partition(update_partition, &ota_state));

            TEST_ASSERT_EQUAL(ESP_OTA_IMG_UNDEFINED, ota_state);



            reboot_as_deep_sleep();
            break;
        case 3:
            ESP_LOGI(TAG, "OTA0");
            TEST_ASSERT_EQUAL(ESP_PARTITION_SUBTYPE_APP_OTA_0, cur_app->subtype);
            TEST_ASSERT_NULL(esp_ota_get_last_invalid_partition());
            TEST_ESP_OK(esp_ota_get_state_partition(cur_app, &ota_state));

            TEST_ASSERT_EQUAL(ESP_OTA_IMG_UNDEFINED, ota_state);



            TEST_ESP_OK(esp_ota_mark_app_valid_cancel_rollback());
            TEST_ESP_OK(esp_ota_get_state_partition(cur_app, &ota_state));
            TEST_ASSERT_EQUAL(ESP_OTA_IMG_VALID, ota_state);
            reboot_as_deep_sleep();
            break;
        case 4:
            ESP_LOGI(TAG, "OTA0");
            TEST_ASSERT_EQUAL(ESP_PARTITION_SUBTYPE_APP_OTA_0, cur_app->subtype);
            TEST_ESP_OK(esp_ota_get_state_partition(cur_app, &ota_state));
            TEST_ASSERT_EQUAL(ESP_OTA_IMG_VALID, ota_state);
            TEST_ESP_OK(esp_ota_mark_app_invalid_rollback_and_reboot());
            break;
        default:
            erase_ota_data();
            TEST_FAIL_MESSAGE("Unexpected stage");
            break;
    }
}
