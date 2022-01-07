
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
typedef scalar_t__ esp_err_t ;


 int ESP_EFUSE_MAC_FACTORY ;
 int ESP_EFUSE_MAC_FACTORY_CRC ;
 int ESP_LOGE (int ,char*,scalar_t__,scalar_t__) ;
 scalar_t__ ESP_OK ;
 int TAG ;
 int abort () ;
 scalar_t__ esp_crc8 (scalar_t__*,int) ;
 scalar_t__ esp_efuse_read_field_blob (int ,scalar_t__*,int) ;

esp_err_t esp_efuse_mac_get_default(uint8_t* mac)
{
    esp_err_t err = esp_efuse_read_field_blob(ESP_EFUSE_MAC_FACTORY, mac, 48);
    if (err != ESP_OK) {
        return err;
    }
    return ESP_OK;
}
