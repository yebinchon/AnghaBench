
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int esp_err_t ;


 int EFUSE_PGM_DATA3_REG ;
 int EFUSE_SECURE_BOOT_EN ;
 int ESP_LOGE (int ,char*) ;
 int ESP_LOGI (int ,char*) ;
 int ESP_OK ;
 int ETS_EFUSE_BLOCK0 ;
 int REG_SET_BIT (int ,int ) ;
 int TAG ;
 int assert (scalar_t__) ;
 int ets_efuse_clear_program_registers () ;
 int ets_efuse_program (int ) ;
 scalar_t__ ets_efuse_secure_boot_enabled () ;
 int ets_secure_boot_verify_bootloader (int *,int) ;

esp_err_t esp_secure_boot_permanently_enable(void)
{
    uint8_t hash[32];

    if (ets_efuse_secure_boot_enabled())
    {
        ESP_LOGI(TAG, "secure boot is already enabled, continuing..");
        return ESP_OK;
    }

    ESP_LOGI(TAG, "Verifying bootloader signature...\n");
    int r = ets_secure_boot_verify_bootloader(hash, 0);
    if (r != ESP_OK) {
        ESP_LOGE(TAG, "Failed to verify bootloader signature");
        return r;
    }

    ets_efuse_clear_program_registers();
    REG_SET_BIT(EFUSE_PGM_DATA3_REG, EFUSE_SECURE_BOOT_EN);
    ets_efuse_program(ETS_EFUSE_BLOCK0);

    assert(ets_efuse_secure_boot_enabled());
    ESP_LOGI(TAG, "Secure boot permanently enabled");

    return ESP_OK;
}
