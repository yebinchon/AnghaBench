#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  scalar_t__ esp_rom_spiflash_result_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_ROM_SPIFLASH_QE ; 
 scalar_t__ ESP_ROM_SPIFLASH_RESULT_ERR ; 
 scalar_t__ ESP_ROM_SPIFLASH_RESULT_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPI_FLASH_WREN ; 
 int /*<<< orphan*/  SPI_IDX ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPI_MEM_FLASH_WREN ; 
 int /*<<< orphan*/  SPI_MEM_WRSR_2B ; 
 int /*<<< orphan*/  SPI_WRSR_2B ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_rom_spiflash_chip ; 

esp_rom_spiflash_result_t FUNC10(void)
{
    uint32_t status;

    FUNC8(&g_rom_spiflash_chip);

    if (FUNC7(&g_rom_spiflash_chip, &status) != ESP_ROM_SPIFLASH_RESULT_OK) {
        return ESP_ROM_SPIFLASH_RESULT_ERR;
    }

    /* Clear all bits except QIE, if it is set.
     (This is different from ROM esp_rom_spiflash_unlock, which keeps all bits as-is.)
    */
    status &= ESP_ROM_SPIFLASH_QE;

    FUNC8(&g_rom_spiflash_chip);
#if CONFIG_IDF_TARGET_ESP32
    REG_WRITE(SPI_CMD_REG(SPI_IDX), SPI_FLASH_WREN);
    while (REG_READ(SPI_CMD_REG(SPI_IDX)) != 0) {
    }
#elif CONFIG_IDF_TARGET_ESP32S2BETA
    REG_WRITE(SPI_MEM_CMD_REG(SPI_IDX), SPI_MEM_FLASH_WREN);
    while (REG_READ(SPI_MEM_CMD_REG(SPI_IDX)) != 0) {
    }
#endif
    FUNC8(&g_rom_spiflash_chip);
#if CONFIG_IDF_TARGET_ESP32
    SET_PERI_REG_MASK(SPI_CTRL_REG(SPI_IDX), SPI_WRSR_2B);
#elif CONFIG_IDF_TARGET_ESP32S2BETA
    SET_PERI_REG_MASK(SPI_MEM_CTRL_REG(SPI_IDX), SPI_MEM_WRSR_2B);
#endif
    if (FUNC9(&g_rom_spiflash_chip, status) != ESP_ROM_SPIFLASH_RESULT_OK) {
        return ESP_ROM_SPIFLASH_RESULT_ERR;
    }

    return ESP_ROM_SPIFLASH_RESULT_OK;
}