
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ esp_rom_spiflash_result_t ;
typedef int esp_rom_spiflash_chip_t ;


 scalar_t__ ESP_ROM_SPIFLASH_RESULT_ERR ;
 scalar_t__ ESP_ROM_SPIFLASH_RESULT_OK ;
 int REG_READ (int ) ;
 int SPI_EXT2_REG (int) ;
 int SPI_MEM_FSM_REG (int) ;
 int SPI_MEM_ST ;
 int SPI_ST ;
 scalar_t__ esp_rom_spiflash_read_status (int *,int *) ;

esp_rom_spiflash_result_t esp_rom_spiflash_wait_idle(esp_rom_spiflash_chip_t *spi)
{
    uint32_t status;
    if ( ESP_ROM_SPIFLASH_RESULT_OK != esp_rom_spiflash_read_status(spi, &status)) {
        return ESP_ROM_SPIFLASH_RESULT_ERR;
    }
    return ESP_ROM_SPIFLASH_RESULT_OK;
}
