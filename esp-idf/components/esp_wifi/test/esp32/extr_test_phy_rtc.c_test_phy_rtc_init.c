
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ esp_err_t ;


 scalar_t__ ESP_ERR_NVS_NEW_VERSION_FOUND ;
 scalar_t__ ESP_ERR_NVS_NO_FREE_PAGES ;
 int ESP_LOGI (int ,char*) ;
 int PHY_BT_MODULE ;
 int PHY_WIFI_MODULE ;
 int TAG ;
 int TEST_ASSERT (int) ;
 int TEST_ESP_OK (scalar_t__) ;
 int esp_phy_load_cal_and_init (int ) ;
 int nvs_flash_deinit () ;
 scalar_t__ nvs_flash_erase () ;
 scalar_t__ nvs_flash_init () ;

__attribute__((used)) static void test_phy_rtc_init(void)
{
    esp_err_t ret = nvs_flash_init();
    if (ret == ESP_ERR_NVS_NO_FREE_PAGES || ret == ESP_ERR_NVS_NEW_VERSION_FOUND) {
        ESP_LOGI(TAG, "no free pages or nvs version mismatch, erase..");
        TEST_ESP_OK(nvs_flash_erase());
        ret = nvs_flash_init();
    }
    TEST_ESP_OK(ret);




    esp_phy_load_cal_and_init(PHY_WIFI_MODULE);


    TEST_ASSERT(1);
    nvs_flash_deinit();
}
