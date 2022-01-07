
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef int esp_flash_t ;
typedef int esp_err_t ;


 int ESP_ERR_NOT_FOUND ;
 int ESP_OK ;

esp_err_t spi_flash_chip_issi_probe(esp_flash_t *chip, uint32_t flash_id)
{

    const uint8_t MFG_ID = 0x9D;
    if (flash_id >> 16 != MFG_ID) {
        return ESP_ERR_NOT_FOUND;
    }

    const uint16_t FLASH_ID_MASK = 0xCF00;
    const uint16_t FLASH_ID_VALUE = 0x4000;
    if ((flash_id & FLASH_ID_MASK) != FLASH_ID_VALUE) {
        return ESP_ERR_NOT_FOUND;
    }

    return ESP_OK;
}
