
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* write_status_fn_t ) (scalar_t__) ;
typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef scalar_t__ (* read_status_fn_t ) () ;
typedef int esp_rom_spiflash_read_mode_t ;
typedef int esp_err_t ;


 int CMD_WREN ;
 scalar_t__ CONFIG_BOOTLOADER_SPI_WP_PIN ;
 int EFUSE_BLK0_RDATA3_REG ;
 int EFUSE_RD_CHIP_VER_PKG ;
 scalar_t__ EFUSE_RD_CHIP_VER_PKG_ESP32D2WDQ5 ;
 scalar_t__ EFUSE_RD_CHIP_VER_PKG_ESP32PICOD2 ;
 scalar_t__ EFUSE_RD_CHIP_VER_PKG_ESP32PICOD4 ;
 scalar_t__ const EFUSE_SPICONFIG_HSPI_DEFAULTS ;
 scalar_t__ const EFUSE_SPICONFIG_SPI_DEFAULTS ;
 scalar_t__ ESP32_D2WD_WP_GPIO ;
 int ESP_FAIL ;
 int ESP_LOGD (int ,char*,...) ;
 int ESP_LOGE (int ,char*) ;
 int ESP_LOGW (int ,char*) ;
 int ESP_OK ;
 int ESP_ROM_SPIFLASH_QIO_MODE ;
 int ESP_ROM_SPIFLASH_QOUT_MODE ;
 scalar_t__ MAX_PAD_GPIO_NUM ;
 scalar_t__ REG_GET_FIELD (int ,int ) ;
 int TAG ;
 int esp_rom_spiflash_config_readmode (int ) ;
 int esp_rom_spiflash_select_qio_pins (scalar_t__,scalar_t__ const) ;
 int esp_rom_spiflash_wait_idle (int *) ;
 scalar_t__ ets_efuse_get_spiconfig () ;
 scalar_t__ ets_efuse_get_wp_pad () ;
 int execute_flash_command (int ,int ,int ,int ) ;
 int g_rom_flashchip ;

__attribute__((used)) static esp_err_t enable_qio_mode(read_status_fn_t read_status_fn,
                                 write_status_fn_t write_status_fn,
                                 uint8_t status_qio_bit)
{
    uint32_t status;
    const uint32_t spiconfig = ets_efuse_get_spiconfig();
    esp_rom_spiflash_wait_idle(&g_rom_flashchip);

    status = read_status_fn();
    ESP_LOGD(TAG, "Initial flash chip status 0x%x", status);

    if ((status & (1 << status_qio_bit)) == 0) {
        execute_flash_command(CMD_WREN, 0, 0, 0);
        write_status_fn(status | (1 << status_qio_bit));

        esp_rom_spiflash_wait_idle(&g_rom_flashchip);

        status = read_status_fn();
        ESP_LOGD(TAG, "Updated flash chip status 0x%x", status);
        if ((status & (1 << status_qio_bit)) == 0) {
            ESP_LOGE(TAG, "Failed to set QIE bit, not enabling QIO mode");
            return ESP_FAIL;
        }

    } else {
        ESP_LOGD(TAG, "QIO mode already enabled in flash");
    }

    ESP_LOGD(TAG, "Enabling QIO mode...");

    esp_rom_spiflash_read_mode_t mode;



    mode = ESP_ROM_SPIFLASH_QIO_MODE;


    esp_rom_spiflash_config_readmode(mode);
    return ESP_OK;
}
