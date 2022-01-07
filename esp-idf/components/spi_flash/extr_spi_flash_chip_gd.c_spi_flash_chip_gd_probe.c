
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int esp_flash_t ;
typedef int esp_err_t ;


 int ESP_ERR_NOT_FOUND ;
 int ESP_OK ;
 int FLASH_ID_MASK ;
 int GD25LQ_PRODUCT_ID ;
 int GD25Q_PRODUCT_ID ;

esp_err_t spi_flash_chip_gd_probe(esp_flash_t *chip, uint32_t flash_id)
{

    const uint8_t MFG_ID = 0xC8;
    if (flash_id >> 16 != MFG_ID) {
        return ESP_ERR_NOT_FOUND;
    }

    uint32_t product_id = flash_id & FLASH_ID_MASK;
    if (product_id != GD25Q_PRODUCT_ID && product_id != GD25LQ_PRODUCT_ID) {
        return ESP_ERR_NOT_FOUND;
    }

    return ESP_OK;
}
