
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ esp_rom_spiflash_result_t ;


 int ESP_ROM_SPIFLASH_QE ;
 scalar_t__ ESP_ROM_SPIFLASH_RESULT_ERR ;
 scalar_t__ ESP_ROM_SPIFLASH_RESULT_OK ;
 scalar_t__ REG_READ (int ) ;
 int REG_WRITE (int ,int ) ;
 int SET_PERI_REG_MASK (int ,int ) ;
 int SPI_CMD_REG (int ) ;
 int SPI_CTRL_REG (int ) ;
 int SPI_FLASH_WREN ;
 int SPI_IDX ;
 int SPI_MEM_CMD_REG (int ) ;
 int SPI_MEM_CTRL_REG (int ) ;
 int SPI_MEM_FLASH_WREN ;
 int SPI_MEM_WRSR_2B ;
 int SPI_WRSR_2B ;
 scalar_t__ esp_rom_spiflash_read_statushigh (int *,int *) ;
 int esp_rom_spiflash_wait_idle (int *) ;
 scalar_t__ esp_rom_spiflash_write_status (int *,int ) ;
 int g_rom_spiflash_chip ;

esp_rom_spiflash_result_t esp_rom_spiflash_unlock(void)
{
    uint32_t status;

    esp_rom_spiflash_wait_idle(&g_rom_spiflash_chip);

    if (esp_rom_spiflash_read_statushigh(&g_rom_spiflash_chip, &status) != ESP_ROM_SPIFLASH_RESULT_OK) {
        return ESP_ROM_SPIFLASH_RESULT_ERR;
    }




    status &= ESP_ROM_SPIFLASH_QE;

    esp_rom_spiflash_wait_idle(&g_rom_spiflash_chip);
    esp_rom_spiflash_wait_idle(&g_rom_spiflash_chip);





    if (esp_rom_spiflash_write_status(&g_rom_spiflash_chip, status) != ESP_ROM_SPIFLASH_RESULT_OK) {
        return ESP_ROM_SPIFLASH_RESULT_ERR;
    }

    return ESP_ROM_SPIFLASH_RESULT_OK;
}
