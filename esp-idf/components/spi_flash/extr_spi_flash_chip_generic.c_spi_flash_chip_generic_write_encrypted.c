
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int esp_flash_t ;
typedef int esp_err_t ;


 int ESP_ERR_FLASH_UNSUPPORTED_HOST ;

esp_err_t spi_flash_chip_generic_write_encrypted(esp_flash_t *chip, const void *buffer, uint32_t address, uint32_t length)
{
    return ESP_ERR_FLASH_UNSUPPORTED_HOST;
}
