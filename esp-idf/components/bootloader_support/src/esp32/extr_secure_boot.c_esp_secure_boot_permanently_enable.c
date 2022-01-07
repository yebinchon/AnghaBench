
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int esp_err_t ;


 int EFUSE_BLK0_RDATA0_REG ;
 int EFUSE_BLK0_RDATA6_REG ;
 int EFUSE_BLK0_WDATA0_REG ;
 int EFUSE_BLK0_WDATA6_REG ;
 int EFUSE_RD_ABS_DONE_0 ;
 int EFUSE_RD_CONSOLE_DEBUG_DISABLE ;
 int EFUSE_RD_DISABLE_JTAG ;
 int EFUSE_RD_DIS_BLK2 ;
 int EFUSE_WR_DIS_BLK2 ;
 int ESP_ERR_INVALID_STATE ;
 int ESP_LOGD (int ,char*,int) ;
 int ESP_LOGE (int ,char*) ;
 int ESP_LOGI (int ,char*) ;
 int ESP_LOGW (int ,char*) ;
 int ESP_OK ;
 int REG_READ (int ) ;
 int REG_WRITE (int ,int) ;
 int TAG ;
 int burn_efuses () ;
 scalar_t__ esp_secure_boot_enabled () ;

esp_err_t esp_secure_boot_permanently_enable(void)
{
    if (esp_secure_boot_enabled()) {
        ESP_LOGI(TAG, "bootloader secure boot is already enabled, continuing..");
        return ESP_OK;
    }

    uint32_t dis_reg = REG_READ(EFUSE_BLK0_RDATA0_REG);
    bool efuse_key_read_protected = dis_reg & EFUSE_RD_DIS_BLK2;
    bool efuse_key_write_protected = dis_reg & EFUSE_WR_DIS_BLK2;
    if (efuse_key_read_protected == 0
        && efuse_key_write_protected == 0) {
        ESP_LOGI(TAG, "Read & write protecting new key...");
        REG_WRITE(EFUSE_BLK0_WDATA0_REG, EFUSE_WR_DIS_BLK2 | EFUSE_RD_DIS_BLK2);
        burn_efuses();
        efuse_key_read_protected = 1;
        efuse_key_write_protected = 1;
    }

    if (!efuse_key_read_protected) {
        ESP_LOGE(TAG, "Pre-loaded key is not read protected. Refusing to blow secure boot efuse.");
        return ESP_ERR_INVALID_STATE;
    }
    if (!efuse_key_write_protected) {
        ESP_LOGE(TAG, "Pre-loaded key is not write protected. Refusing to blow secure boot efuse.");
        return ESP_ERR_INVALID_STATE;
    }

    ESP_LOGI(TAG, "blowing secure boot efuse...");
    ESP_LOGD(TAG, "before updating, EFUSE_BLK0_RDATA6 %x", REG_READ(EFUSE_BLK0_RDATA6_REG));

    uint32_t new_wdata6 = EFUSE_RD_ABS_DONE_0;


    ESP_LOGI(TAG, "Disable JTAG...");
    new_wdata6 |= EFUSE_RD_DISABLE_JTAG;





    ESP_LOGI(TAG, "Disable ROM BASIC interpreter fallback...");
    new_wdata6 |= EFUSE_RD_CONSOLE_DEBUG_DISABLE;




    REG_WRITE(EFUSE_BLK0_WDATA6_REG, new_wdata6);
    burn_efuses();
    uint32_t after = REG_READ(EFUSE_BLK0_RDATA6_REG);
    ESP_LOGD(TAG, "after updating, EFUSE_BLK0_RDATA6 %x", after);
    if (after & EFUSE_RD_ABS_DONE_0) {
        ESP_LOGI(TAG, "secure boot is now enabled for bootloader image");
        return ESP_OK;
    } else {
        ESP_LOGE(TAG, "secure boot not enabled for bootloader image, EFUSE_RD_ABS_DONE_0 is probably write protected!");
        return ESP_ERR_INVALID_STATE;
    }
}
