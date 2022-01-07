
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {scalar_t__ device_id; } ;


 scalar_t__ const EFUSE_SPICONFIG_SPI_DEFAULTS ;
 int FLASH_CS_IO ;
 scalar_t__ FLASH_ID_GD25LQ32C ;
 int FLASH_SPID_IO ;
 int FLASH_SPIHD_IO ;
 int FLASH_SPIQ_IO ;
 int FLASH_SPIWP_IO ;
 int FUNC_SPICLK_SPICLK ;
 int FUN_DRV ;
 int FUN_DRV_S ;
 int PERIPHS_IO_MUX_SPICLK_U ;
 int PERIPHS_IO_MUX_SPICS0_U ;
 int PERIPHS_IO_MUX_SPID_U ;
 int PERIPHS_IO_MUX_SPIHD_U ;
 int PERIPHS_IO_MUX_SPIQ_U ;
 int PERIPHS_IO_MUX_SPIWP_U ;
 int PIN_FUNC_GPIO ;
 int PIN_FUNC_SELECT (int ,int ) ;
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
 scalar_t__ ets_efuse_get_spiconfig () ;
 TYPE_1__ g_rom_flashchip ;
 int gpio_matrix_in (int ,int ,int ) ;
 int gpio_matrix_out (int ,int ,int ,int ) ;

void bootloader_configure_spi_pins(int drv)
{
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

        PIN_FUNC_SELECT(PERIPHS_IO_MUX_SPIHD_U, PIN_FUNC_GPIO);
        PIN_FUNC_SELECT(PERIPHS_IO_MUX_SPIWP_U, PIN_FUNC_GPIO);
        PIN_FUNC_SELECT(PERIPHS_IO_MUX_SPICS0_U, PIN_FUNC_GPIO);
        PIN_FUNC_SELECT(PERIPHS_IO_MUX_SPIQ_U, PIN_FUNC_GPIO);
        PIN_FUNC_SELECT(PERIPHS_IO_MUX_SPID_U, PIN_FUNC_GPIO);


        PIN_FUNC_SELECT(PERIPHS_IO_MUX_SPICLK_U, FUNC_SPICLK_SPICLK);
        SET_PERI_REG_BITS(PERIPHS_IO_MUX_SPICLK_U, FUN_DRV, drv, FUN_DRV_S);
    }
}
