
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int subtype; } ;
typedef TYPE_1__ esp_partition_t ;


 int ESP_FAIL ;
 int ESP_LOGI (int ,char*,...) ;
 int ESP_PARTITION_SUBTYPE_APP_FACTORY ;
 int TAG ;
 int TEST_ASSERT_EQUAL (int ,int ) ;
 int TEST_ESP_ERR (int ,int ) ;
 int boot_count ;
 int erase_ota_data () ;
 int esp_ota_erase_last_boot_app_partition () ;
 TYPE_1__* get_running_firmware () ;

__attribute__((used)) static void test_erase_last_app_rollback(void)
{
    boot_count = 5;
    ESP_LOGI(TAG, "boot count %d", boot_count);
    const esp_partition_t *cur_app = get_running_firmware();
    ESP_LOGI(TAG, "erase_last_app");
    TEST_ASSERT_EQUAL(ESP_PARTITION_SUBTYPE_APP_FACTORY, cur_app->subtype);
    TEST_ESP_ERR(ESP_FAIL, esp_ota_erase_last_boot_app_partition());
    erase_ota_data();
}
