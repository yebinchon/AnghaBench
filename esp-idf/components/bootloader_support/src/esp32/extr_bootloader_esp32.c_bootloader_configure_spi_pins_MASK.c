#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_2__ {int device_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  EFUSE_BLK0_RDATA3_REG ; 
 int /*<<< orphan*/  EFUSE_RD_CHIP_VER_PKG ; 
 int EFUSE_RD_CHIP_VER_PKG_ESP32D2WDQ5 ; 
 int EFUSE_RD_CHIP_VER_PKG_ESP32PICOD2 ; 
 int EFUSE_RD_CHIP_VER_PKG_ESP32PICOD4 ; 
 int const EFUSE_SPICONFIG_SPI_DEFAULTS ; 
 int /*<<< orphan*/  FLASH_CS_IO ; 
 int FLASH_ID_GD25LQ32C ; 
 int /*<<< orphan*/  FLASH_SPID_IO ; 
 int /*<<< orphan*/  FLASH_SPIHD_IO ; 
 int /*<<< orphan*/  FLASH_SPIQ_IO ; 
 int /*<<< orphan*/  FLASH_SPIWP_IO ; 
 int /*<<< orphan*/  FUNC_SD_CLK_SPICLK ; 
 int /*<<< orphan*/  FUN_DRV ; 
 int /*<<< orphan*/  FUN_DRV_S ; 
 int /*<<< orphan*/  PERIPHS_IO_MUX_SD_CLK_U ; 
 int /*<<< orphan*/  PERIPHS_IO_MUX_SD_CMD_U ; 
 int /*<<< orphan*/  PERIPHS_IO_MUX_SD_DATA0_U ; 
 int /*<<< orphan*/  PERIPHS_IO_MUX_SD_DATA1_U ; 
 int /*<<< orphan*/  PERIPHS_IO_MUX_SD_DATA2_U ; 
 int /*<<< orphan*/  PERIPHS_IO_MUX_SD_DATA3_U ; 
 int /*<<< orphan*/  PIN_FUNC_GPIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPICS0_OUT_IDX ; 
 int /*<<< orphan*/  SPID_IN_IDX ; 
 int /*<<< orphan*/  SPID_OUT_IDX ; 
 int /*<<< orphan*/  SPIHD_IN_IDX ; 
 int /*<<< orphan*/  SPIHD_OUT_IDX ; 
 int /*<<< orphan*/  SPIQ_IN_IDX ; 
 int /*<<< orphan*/  SPIQ_OUT_IDX ; 
 int /*<<< orphan*/  SPIWP_IN_IDX ; 
 int /*<<< orphan*/  SPIWP_OUT_IDX ; 
 int FUNC3 () ; 
 TYPE_1__ g_rom_flashchip ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC6(int drv)
{
    uint32_t chip_ver = FUNC1(EFUSE_BLK0_RDATA3_REG, EFUSE_RD_CHIP_VER_PKG);
    uint32_t pkg_ver = chip_ver & 0x7;

    if (pkg_ver == EFUSE_RD_CHIP_VER_PKG_ESP32D2WDQ5) {
        // For ESP32D2WD the SPI pins are already configured
        // flash clock signal should come from IO MUX.
        FUNC0(PERIPHS_IO_MUX_SD_CLK_U, FUNC_SD_CLK_SPICLK);
        FUNC2(PERIPHS_IO_MUX_SD_CLK_U, FUN_DRV, drv, FUN_DRV_S);
    } else if (pkg_ver == EFUSE_RD_CHIP_VER_PKG_ESP32PICOD2) {
        // For ESP32PICOD2 the SPI pins are already configured
        // flash clock signal should come from IO MUX.
        FUNC0(PERIPHS_IO_MUX_SD_CLK_U, FUNC_SD_CLK_SPICLK);
        FUNC2(PERIPHS_IO_MUX_SD_CLK_U, FUN_DRV, drv, FUN_DRV_S);
    } else if (pkg_ver == EFUSE_RD_CHIP_VER_PKG_ESP32PICOD4) {
        // For ESP32PICOD4 the SPI pins are already configured
        // flash clock signal should come from IO MUX.
        FUNC0(PERIPHS_IO_MUX_SD_CLK_U, FUNC_SD_CLK_SPICLK);
        FUNC2(PERIPHS_IO_MUX_SD_CLK_U, FUN_DRV, drv, FUN_DRV_S);
    } else {
        const uint32_t spiconfig = FUNC3();
        if (spiconfig == EFUSE_SPICONFIG_SPI_DEFAULTS) {
            FUNC5(FLASH_CS_IO, SPICS0_OUT_IDX, 0, 0);
            FUNC5(FLASH_SPIQ_IO, SPIQ_OUT_IDX, 0, 0);
            FUNC4(FLASH_SPIQ_IO, SPIQ_IN_IDX, 0);
            FUNC5(FLASH_SPID_IO, SPID_OUT_IDX, 0, 0);
            FUNC4(FLASH_SPID_IO, SPID_IN_IDX, 0);
            FUNC5(FLASH_SPIWP_IO, SPIWP_OUT_IDX, 0, 0);
            FUNC4(FLASH_SPIWP_IO, SPIWP_IN_IDX, 0);
            FUNC5(FLASH_SPIHD_IO, SPIHD_OUT_IDX, 0, 0);
            FUNC4(FLASH_SPIHD_IO, SPIHD_IN_IDX, 0);
            //select pin function gpio
            FUNC0(PERIPHS_IO_MUX_SD_DATA0_U, PIN_FUNC_GPIO);
            FUNC0(PERIPHS_IO_MUX_SD_DATA1_U, PIN_FUNC_GPIO);
            FUNC0(PERIPHS_IO_MUX_SD_DATA2_U, PIN_FUNC_GPIO);
            FUNC0(PERIPHS_IO_MUX_SD_DATA3_U, PIN_FUNC_GPIO);
            FUNC0(PERIPHS_IO_MUX_SD_CMD_U, PIN_FUNC_GPIO);
            // flash clock signal should come from IO MUX.
            // set drive ability for clock
            FUNC0(PERIPHS_IO_MUX_SD_CLK_U, FUNC_SD_CLK_SPICLK);
            FUNC2(PERIPHS_IO_MUX_SD_CLK_U, FUN_DRV, drv, FUN_DRV_S);

            #if CONFIG_SPIRAM_TYPE_ESPPSRAM32 || CONFIG_SPIRAM_TYPE_ESPPSRAM64
            uint32_t flash_id = g_rom_flashchip.device_id;
            if (flash_id == FLASH_ID_GD25LQ32C) {
                // Set drive ability for 1.8v flash in 80Mhz.
                SET_PERI_REG_BITS(PERIPHS_IO_MUX_SD_DATA0_U, FUN_DRV, 3, FUN_DRV_S);
                SET_PERI_REG_BITS(PERIPHS_IO_MUX_SD_DATA1_U, FUN_DRV, 3, FUN_DRV_S);
                SET_PERI_REG_BITS(PERIPHS_IO_MUX_SD_DATA2_U, FUN_DRV, 3, FUN_DRV_S);
                SET_PERI_REG_BITS(PERIPHS_IO_MUX_SD_DATA3_U, FUN_DRV, 3, FUN_DRV_S);
                SET_PERI_REG_BITS(PERIPHS_IO_MUX_SD_CMD_U, FUN_DRV, 3, FUN_DRV_S);
                SET_PERI_REG_BITS(PERIPHS_IO_MUX_SD_CLK_U, FUN_DRV, 3, FUN_DRV_S);
            }
            #endif
        }
    }
}