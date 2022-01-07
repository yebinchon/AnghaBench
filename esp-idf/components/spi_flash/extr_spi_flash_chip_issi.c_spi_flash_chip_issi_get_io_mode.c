
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int const uint32_t ;
typedef int esp_flash_t ;
typedef int esp_flash_io_mode_t ;
typedef scalar_t__ esp_err_t ;


 scalar_t__ ESP_OK ;
 int SPI_FLASH_QOUT ;
 scalar_t__ spi_flash_common_read_status_8b_rdsr (int *,int const*) ;

esp_err_t spi_flash_chip_issi_get_io_mode(esp_flash_t *chip, esp_flash_io_mode_t* out_io_mode)
{

    const uint8_t BIT_QE = 1 << 6;
    uint32_t sr;
    esp_err_t ret = spi_flash_common_read_status_8b_rdsr(chip, &sr);
    if (ret == ESP_OK) {
        *out_io_mode = ((sr & BIT_QE)? SPI_FLASH_QOUT: 0);
    }
    return ret;
}
