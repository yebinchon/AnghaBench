
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int esp_flash_t ;
typedef int esp_err_t ;


 int spi_flash_common_read_status_8b_rdsr ;
 int spi_flash_common_set_io_mode (int *,int ,int ,int const) ;
 int spi_flash_common_write_status_8b_wrsr ;

esp_err_t spi_flash_chip_issi_set_io_mode(esp_flash_t *chip)
{

    const uint8_t BIT_QE = 1 << 6;
    return spi_flash_common_set_io_mode(chip,
                                        spi_flash_common_write_status_8b_wrsr,
                                        spi_flash_common_read_status_8b_rdsr,
                                        BIT_QE);
}
