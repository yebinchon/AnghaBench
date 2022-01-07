
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int* uint32_t ;
typedef int mac ;
typedef int buff ;


 int ESP_EFUSE_MAC_FACTORY ;
 int ESP_EFUSE_MAC_FACTORY_CRC ;
 int ESP_ERR_INVALID_ARG ;
 int ESP_LOGI (int ,char*,...) ;
 int TAG ;
 int TEST_ASSERT_EQUAL_HEX8 (int,int) ;
 int TEST_ASSERT_EQUAL_INT (int,int ) ;
 int TEST_ASSERT_TRUE_MESSAGE (int,char*) ;
 int TEST_ESP_ERR (int ,int ) ;
 int TEST_ESP_OK (int ) ;
 int esp_crc8 (int*,int) ;
 int esp_efuse_get_field_size (int ) ;
 int esp_efuse_read_field_blob (int ,...) ;
 int esp_efuse_utility_debug_dump_blocks () ;
 int esp_efuse_utility_update_virt_blocks () ;
 scalar_t__ memcmp (int*,int*,int) ;
 int memset (int*,int ,int) ;

__attribute__((used)) static void test_read_blob(void)
{
    esp_efuse_utility_update_virt_blocks();
    esp_efuse_utility_debug_dump_blocks();

    uint8_t mac[6];

    ESP_LOGI(TAG, "1. Read MAC address");
    memset(mac, 0, sizeof(mac));
    TEST_ESP_OK(esp_efuse_read_field_blob(ESP_EFUSE_MAC_FACTORY, &mac, sizeof(mac) * 8));
    TEST_ASSERT_EQUAL_INT(sizeof(mac) * 8, esp_efuse_get_field_size(ESP_EFUSE_MAC_FACTORY));
    ESP_LOGI(TAG, "MAC: %02x:%02x:%02x:%02x:%02x:%02x", mac[0], mac[1], mac[2], mac[3], mac[4], mac[5]);
    ESP_LOGI(TAG, "3. Test check args");
    uint32_t test_var;
    TEST_ESP_ERR(ESP_ERR_INVALID_ARG, esp_efuse_read_field_blob(ESP_EFUSE_MAC_FACTORY, ((void*)0), 1));
    TEST_ESP_ERR(ESP_ERR_INVALID_ARG, esp_efuse_read_field_blob(ESP_EFUSE_MAC_FACTORY, &test_var, 0));

    uint8_t half_byte;
    TEST_ESP_OK(esp_efuse_read_field_blob(ESP_EFUSE_MAC_FACTORY, &half_byte, 4));
    TEST_ASSERT_EQUAL_HEX8(mac[0]&0x0F, half_byte);

    uint8_t buff[7] = {0x59};
    TEST_ESP_OK(esp_efuse_read_field_blob(ESP_EFUSE_MAC_FACTORY, &buff, sizeof(buff) * 8));
    TEST_ASSERT_TRUE_MESSAGE(memcmp(mac, buff, sizeof(mac)) == 0, "Operation read blob is not success");
    TEST_ASSERT_EQUAL_HEX8(0, buff[6]);
}
