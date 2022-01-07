
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int device_id; } ;


 int EFUSE_BLK0_RDATA3_REG ;
 int EFUSE_RD_CHIP_VER_PKG ;
 int EFUSE_RD_CHIP_VER_PKG_ESP32D2WDQ5 ;
 int EFUSE_RD_CHIP_VER_PKG_ESP32PICOD2 ;
 int EFUSE_RD_CHIP_VER_PKG_ESP32PICOD4 ;
 int const EFUSE_SPICONFIG_SPI_DEFAULTS ;
 int FLASH_CS_IO ;
 int FLASH_ID_GD25LQ32C ;
 int FLASH_SPID_IO ;
 int FLASH_SPIHD_IO ;
 int FLASH_SPIQ_IO ;
 int FLASH_SPIWP_IO ;
 int FUNC_SD_CLK_SPICLK ;
 int FUN_DRV ;
 int FUN_DRV_S ;
 int PERIPHS_IO_MUX_SD_CLK_U ;
 int PERIPHS_IO_MUX_SD_CMD_U ;
 int PERIPHS_IO_MUX_SD_DATA0_U ;
 int PERIPHS_IO_MUX_SD_DATA1_U ;
 int PERIPHS_IO_MUX_SD_DATA2_U ;
 int PERIPHS_IO_MUX_SD_DATA3_U ;
 int PIN_FUNC_GPIO ;
 int PIN_FUNC_SELECT (int ,int ) ;
 int REG_GET_FIELD (int ,int ) ;
 int SET_PERI_REG_BITS (int ,int ,int,int ) ;
 int SPICS0_OUT_IDX ;
 int SPID_IN_IDX ;
 int SPID_OUT_IDX ;
 int SPIHD_IN_IDX ;
 int SPIHD_OUT_IDX ;
 int SPIQ_IN_IDX ;
 int SPIQ_OUT_IDX ;
 int SPIWP_IN_IDX ;
 int SPIWP_OUT_IDX ;
 int ets_efuse_get_spiconfig () ;
 TYPE_1__ g_rom_flashchip ;
 int gpio_matrix_in (int ,int ,int ) ;
 int gpio_matrix_out (int ,int ,int ,int ) ;

void bootloader_configure_spi_pins(int drv)
{
    uint32_t chip_ver = REG_GET_FIELD(EFUSE_BLK0_RDATA3_REG, EFUSE_RD_CHIP_VER_PKG);
    uint32_t pkg_ver = chip_ver & 0x7;

    if (pkg_ver == EFUSE_RD_CHIP_VER_PKG_ESP32D2WDQ5) {


        PIN_FUNC_SELECT(PERIPHS_IO_MUX_SD_CLK_U, FUNC_SD_CLK_SPICLK);
        SET_PERI_REG_BITS(PERIPHS_IO_MUX_SD_CLK_U, FUN_DRV, drv, FUN_DRV_S);
    } else if (pkg_ver == EFUSE_RD_CHIP_VER_PKG_ESP32PICOD2) {


        PIN_FUNC_SELECT(PERIPHS_IO_MUX_SD_CLK_U, FUNC_SD_CLK_SPICLK);
        SET_PERI_REG_BITS(PERIPHS_IO_MUX_SD_CLK_U, FUN_DRV, drv, FUN_DRV_S);
    } else if (pkg_ver == EFUSE_RD_CHIP_VER_PKG_ESP32PICOD4) {


        PIN_FUNC_SELECT(PERIPHS_IO_MUX_SD_CLK_U, FUNC_SD_CLK_SPICLK);
        SET_PERI_REG_BITS(PERIPHS_IO_MUX_SD_CLK_U, FUN_DRV, drv, FUN_DRV_S);
    } else {
        const uint32_t spiconfig = ets_efuse_get_spiconfig();
        if (spiconfig == EFUSE_SPICONFIG_SPI_DEFAULTS) {
            gpio_matrix_out(FLASH_CS_IO, SPICS0_OUT_IDX, 0, 0);
            gpio_matrix_out(FLASH_SPIQ_IO, SPIQ_OUT_IDX, 0, 0);
            gpio_matrix_in(FLASH_SPIQ_IO, SPIQ_IN_IDX, 0);
            gpio_matrix_out(FLASH_SPID_IO, SPID_OUT_IDX, 0, 0);
            gpio_matrix_in(FLASH_SPID_IO, SPID_IN_IDX, 0);
            gpio_matrix_out(FLASH_SPIWP_IO, SPIWP_OUT_IDX, 0, 0);
            gpio_matrix_in(FLASH_SPIWP_IO, SPIWP_IN_IDX, 0);
            gpio_matrix_out(FLASH_SPIHD_IO, SPIHD_OUT_IDX, 0, 0);
            gpio_matrix_in(FLASH_SPIHD_IO, SPIHD_IN_IDX, 0);

            PIN_FUNC_SELECT(PERIPHS_IO_MUX_SD_DATA0_U, PIN_FUNC_GPIO);
            PIN_FUNC_SELECT(PERIPHS_IO_MUX_SD_DATA1_U, PIN_FUNC_GPIO);
            PIN_FUNC_SELECT(PERIPHS_IO_MUX_SD_DATA2_U, PIN_FUNC_GPIO);
            PIN_FUNC_SELECT(PERIPHS_IO_MUX_SD_DATA3_U, PIN_FUNC_GPIO);
            PIN_FUNC_SELECT(PERIPHS_IO_MUX_SD_CMD_U, PIN_FUNC_GPIO);


            PIN_FUNC_SELECT(PERIPHS_IO_MUX_SD_CLK_U, FUNC_SD_CLK_SPICLK);
            SET_PERI_REG_BITS(PERIPHS_IO_MUX_SD_CLK_U, FUN_DRV, drv, FUN_DRV_S);
        }
    }
}
