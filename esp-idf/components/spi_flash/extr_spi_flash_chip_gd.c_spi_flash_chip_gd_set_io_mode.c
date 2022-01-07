
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int chip_id; } ;
typedef TYPE_1__ esp_flash_t ;
typedef int esp_err_t ;


 scalar_t__ WRSR_16B_REQUIRED (int ) ;
 int spi_flash_common_read_status_16b_rdsr_rdsr2 ;
 int spi_flash_common_read_status_8b_rdsr2 ;
 int spi_flash_common_set_io_mode (TYPE_1__*,int ,int ,int const) ;
 int spi_flash_common_write_status_16b_wrsr ;
 int spi_flash_common_write_status_8b_wrsr2 ;

esp_err_t spi_flash_chip_gd_set_io_mode(esp_flash_t *chip)
{
    if (WRSR_16B_REQUIRED(chip->chip_id)) {
        const uint32_t qe = 1<<9;
        return spi_flash_common_set_io_mode(chip,
                                            spi_flash_common_write_status_16b_wrsr,
                                            spi_flash_common_read_status_16b_rdsr_rdsr2,
                                            qe);
    } else {
        const uint32_t qe = 1<<1;
        return spi_flash_common_set_io_mode(chip,
                                            spi_flash_common_write_status_8b_wrsr2,
                                            spi_flash_common_read_status_8b_rdsr2,
                                            qe);
    }
}
