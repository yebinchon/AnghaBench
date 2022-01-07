
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int esp_flash_t ;
typedef int esp_err_t ;


 int CMD_WRSR ;
 int spi_flash_common_write_qe_sr (int *,int ,int,int ) ;

esp_err_t spi_flash_common_write_status_16b_wrsr(esp_flash_t* chip, uint32_t sr)
{
    return spi_flash_common_write_qe_sr(chip, CMD_WRSR, 16, sr);
}
