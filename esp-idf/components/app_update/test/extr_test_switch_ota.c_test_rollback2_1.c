
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int subtype; } ;
typedef TYPE_1__ esp_partition_t ;
typedef int esp_ota_img_states_t ;


 int ESP_LOGI (int ,char*,...) ;
 int ESP_OTA_IMG_ABORTED ;
 int ESP_OTA_IMG_INVALID ;
 int ESP_OTA_IMG_VALID ;
 int ESP_PARTITION_SUBTYPE_APP_OTA_0 ;
 int ESP_PARTITION_SUBTYPE_APP_OTA_1 ;
 int TAG ;
 int TEST_ASSERT_EQUAL (int ,int) ;
 int TEST_ASSERT_EQUAL_PTR (TYPE_1__ const*,TYPE_1__ const*) ;
 int TEST_ASSERT_NOT_NULL (TYPE_1__ const*) ;
 int TEST_ESP_OK (int ) ;
 int boot_count ;
 int erase_ota_data () ;
 TYPE_1__* esp_ota_get_last_invalid_partition () ;
 TYPE_1__* esp_ota_get_next_update_partition (int *) ;
 int esp_ota_get_state_partition (TYPE_1__ const*,int*) ;
 TYPE_1__* get_running_firmware () ;

__attribute__((used)) static void test_rollback2_1(void)
{
    boot_count = 5;
    esp_ota_img_states_t ota_state = 0x5555AAAA;
    ESP_LOGI(TAG, "boot count %d", boot_count);
    const esp_partition_t *cur_app = get_running_firmware();
    ESP_LOGI(TAG, "OTA0");
    TEST_ASSERT_EQUAL(ESP_PARTITION_SUBTYPE_APP_OTA_0, cur_app->subtype);

    const esp_partition_t *invalid_partition = esp_ota_get_last_invalid_partition();
    TEST_ASSERT_EQUAL(ESP_PARTITION_SUBTYPE_APP_OTA_1, invalid_partition->subtype);
    const esp_partition_t* next_update_partition = esp_ota_get_next_update_partition(((void*)0));
    TEST_ASSERT_NOT_NULL(invalid_partition);
    TEST_ASSERT_NOT_NULL(next_update_partition);
    TEST_ASSERT_EQUAL_PTR(invalid_partition, next_update_partition);
    TEST_ESP_OK(esp_ota_get_state_partition(cur_app, &ota_state));
    TEST_ASSERT_EQUAL(ESP_OTA_IMG_VALID, ota_state);
    TEST_ESP_OK(esp_ota_get_state_partition(invalid_partition, &ota_state));

    TEST_ASSERT_EQUAL(ESP_OTA_IMG_INVALID, ota_state);



    erase_ota_data();
}
