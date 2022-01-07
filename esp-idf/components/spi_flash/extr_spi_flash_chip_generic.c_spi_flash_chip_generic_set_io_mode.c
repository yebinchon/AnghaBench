
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int esp_flash_t ;
typedef int esp_err_t ;


 int spi_flash_common_read_status_16b_rdsr_rdsr2 ;
 int spi_flash_common_set_io_mode (int *,int ,int ,int const) ;
 int spi_flash_common_write_status_16b_wrsr ;

esp_err_t spi_flash_chip_generic_set_io_mode(esp_flash_t *chip)
{


    const uint32_t BIT_QE = 1 << 9;
    return spi_flash_common_set_io_mode(chip,
                                        spi_flash_common_write_status_16b_wrsr,
                                        spi_flash_common_read_status_16b_rdsr_rdsr2,
                                        BIT_QE);
}
