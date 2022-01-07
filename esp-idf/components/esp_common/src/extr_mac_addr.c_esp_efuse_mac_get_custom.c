
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int esp_err_t ;


 int ESP_EFUSE_MAC_CUSTOM ;
 int ESP_EFUSE_MAC_CUSTOM_CRC ;
 int ESP_EFUSE_MAC_CUSTOM_VER ;
 int ESP_ERR_INVALID_CRC ;
 int ESP_ERR_INVALID_VERSION ;
 int ESP_ERR_NOT_SUPPORTED ;
 int ESP_LOGE (int ,char*,int,...) ;
 int ESP_OK ;
 int TAG ;
 int esp_crc8 (int*,int) ;
 int esp_efuse_read_field_blob (int ,int*,int) ;

esp_err_t esp_efuse_mac_get_custom(uint8_t *mac)
{



    uint8_t version;
    esp_efuse_read_field_blob(ESP_EFUSE_MAC_CUSTOM_VER, &version, 8);
    if (version != 1) {
        ESP_LOGE(TAG, "Base MAC address from BLK3 of EFUSE version error, version = %d", version);
        return ESP_ERR_INVALID_VERSION;
    }

    uint8_t efuse_crc;
    esp_efuse_read_field_blob(ESP_EFUSE_MAC_CUSTOM, mac, 48);
    esp_efuse_read_field_blob(ESP_EFUSE_MAC_CUSTOM_CRC, &efuse_crc, 8);
    uint8_t calc_crc = esp_crc8(mac, 6);

    if (efuse_crc != calc_crc) {
        ESP_LOGE(TAG, "Base MAC address from BLK3 of EFUSE CRC error, efuse_crc = 0x%02x; calc_crc = 0x%02x", efuse_crc, calc_crc);
        return ESP_ERR_INVALID_CRC;
    }
    return ESP_OK;

}
