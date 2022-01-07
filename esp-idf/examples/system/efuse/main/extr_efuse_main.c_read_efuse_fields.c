
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int mac ;
typedef int device_desc_t ;


 int ESP_EFUSE_MAC_FACTORY ;
 int ESP_EFUSE_SECURE_VERSION ;
 int ESP_ERROR_CHECK (int ) ;
 int ESP_LOGI (int ,char*,...) ;
 int TAG ;
 int esp_efuse_read_field_blob (int ,int **,int) ;
 int esp_efuse_read_field_cnt (int ,size_t*) ;
 int read_device_desc_efuse_fields (int *) ;

__attribute__((used)) static void read_efuse_fields(device_desc_t *desc)
{
    ESP_LOGI(TAG, "read efuse fields");

    uint8_t mac[6];
    ESP_ERROR_CHECK(esp_efuse_read_field_blob(ESP_EFUSE_MAC_FACTORY, &mac, sizeof(mac) * 8));
    ESP_LOGI(TAG, "1. read MAC address: %02x:%02x:%02x:%02x:%02x:%02x", mac[0], mac[1], mac[2], mac[3], mac[4], mac[5]);

    size_t secure_version = 0;
    ESP_ERROR_CHECK(esp_efuse_read_field_cnt(ESP_EFUSE_SECURE_VERSION, &secure_version));
    ESP_LOGI(TAG, "2. read secure_version: %d", secure_version);

    ESP_LOGI(TAG, "3. read custom fields");
    read_device_desc_efuse_fields(desc);
}
