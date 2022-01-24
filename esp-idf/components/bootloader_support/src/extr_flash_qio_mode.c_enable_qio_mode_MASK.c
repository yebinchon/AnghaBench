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
typedef  int /*<<< orphan*/  (* write_status_fn_t ) (scalar_t__) ;
typedef  int uint8_t ;
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ (* read_status_fn_t ) () ;
typedef  int /*<<< orphan*/  esp_rom_spiflash_read_mode_t ;
typedef  int /*<<< orphan*/  esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_WREN ; 
 scalar_t__ CONFIG_BOOTLOADER_SPI_WP_PIN ; 
 int /*<<< orphan*/  EFUSE_BLK0_RDATA3_REG ; 
 int /*<<< orphan*/  EFUSE_RD_CHIP_VER_PKG ; 
 scalar_t__ EFUSE_RD_CHIP_VER_PKG_ESP32D2WDQ5 ; 
 scalar_t__ EFUSE_RD_CHIP_VER_PKG_ESP32PICOD2 ; 
 scalar_t__ EFUSE_RD_CHIP_VER_PKG_ESP32PICOD4 ; 
 scalar_t__ const EFUSE_SPICONFIG_HSPI_DEFAULTS ; 
 scalar_t__ const EFUSE_SPICONFIG_SPI_DEFAULTS ; 
 scalar_t__ ESP32_D2WD_WP_GPIO ; 
 int /*<<< orphan*/  ESP_FAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  ESP_ROM_SPIFLASH_QIO_MODE ; 
 int /*<<< orphan*/  ESP_ROM_SPIFLASH_QOUT_MODE ; 
 scalar_t__ MAX_PAD_GPIO_NUM ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__ const) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 () ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_rom_flashchip ; 

__attribute__((used)) static esp_err_t FUNC10(read_status_fn_t read_status_fn,
                                 write_status_fn_t write_status_fn,
                                 uint8_t status_qio_bit)
{
    uint32_t status;
    const uint32_t spiconfig = FUNC7();

#if CONFIG_IDF_TARGET_ESP32
    if (spiconfig != EFUSE_SPICONFIG_SPI_DEFAULTS && spiconfig != EFUSE_SPICONFIG_HSPI_DEFAULTS) {
        // spiconfig specifies a custom efuse pin configuration. This config defines all pins -except- WP,
        // which is compiled into the bootloader instead.
        //
        // Most commonly an overriden pin mapping means ESP32-D2WD or ESP32-PICOD4.
        //Warn if chip is ESP32-D2WD/ESP32-PICOD4 but someone has changed the WP pin
        //assignment from that chip's WP pin.
        uint32_t pkg_ver = REG_GET_FIELD(EFUSE_BLK0_RDATA3_REG, EFUSE_RD_CHIP_VER_PKG);
        if (CONFIG_BOOTLOADER_SPI_WP_PIN != ESP32_D2WD_WP_GPIO  &&
                (pkg_ver == EFUSE_RD_CHIP_VER_PKG_ESP32D2WDQ5 ||
                 pkg_ver == EFUSE_RD_CHIP_VER_PKG_ESP32PICOD2 ||
                 pkg_ver == EFUSE_RD_CHIP_VER_PKG_ESP32PICOD4)) {
            ESP_LOGW(TAG, "Chip is ESP32-D2WD/ESP32-PICOD4 but flash WP pin is different value to internal flash");
        }
    }
#endif

    FUNC6(&g_rom_flashchip);

    status = read_status_fn();
    FUNC0(TAG, "Initial flash chip status 0x%x", status);

    if ((status & (1 << status_qio_bit)) == 0) {
        FUNC9(CMD_WREN, 0, 0, 0);
        write_status_fn(status | (1 << status_qio_bit));

        FUNC6(&g_rom_flashchip);

        status = read_status_fn();
        FUNC0(TAG, "Updated flash chip status 0x%x", status);
        if ((status & (1 << status_qio_bit)) == 0) {
            FUNC1(TAG, "Failed to set QIE bit, not enabling QIO mode");
            return ESP_FAIL;
        }

    } else {
        FUNC0(TAG, "QIO mode already enabled in flash");
    }

    FUNC0(TAG, "Enabling QIO mode...");

    esp_rom_spiflash_read_mode_t mode;
#if CONFIG_ESPTOOLPY_FLASHMODE_QOUT
    mode = ESP_ROM_SPIFLASH_QOUT_MODE;
#else
    mode = ESP_ROM_SPIFLASH_QIO_MODE;
#endif

    FUNC4(mode);

#if CONFIG_IDF_TARGET_ESP32
    esp_rom_spiflash_select_qio_pins(CONFIG_BOOTLOADER_SPI_WP_PIN, spiconfig);
#elif CONFIG_IDF_TARGET_ESP32S2BETA
    if (ets_efuse_get_wp_pad() <= MAX_PAD_GPIO_NUM) {
        esp_rom_spiflash_select_qio_pins(ets_efuse_get_wp_pad(), spiconfig);
    } else {
        esp_rom_spiflash_select_qio_pins(CONFIG_BOOTLOADER_SPI_WP_PIN, spiconfig);
    }
#endif
    return ESP_OK;
}