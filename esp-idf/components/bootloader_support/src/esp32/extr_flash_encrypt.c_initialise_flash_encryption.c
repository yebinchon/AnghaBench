
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int esp_err_t ;


 int EFUSE_BLK0_RDATA0_REG ;
 int EFUSE_BLK0_RDATA6_REG ;
 int EFUSE_BLK0_WDATA0_REG ;
 int EFUSE_BLK0_WDATA5_REG ;
 int EFUSE_BLK0_WDATA6_REG ;
 int EFUSE_BLK1_RDATA0_REG ;
 int EFUSE_BLK1_RDATA1_REG ;
 int EFUSE_BLK1_RDATA2_REG ;
 int EFUSE_BLK1_RDATA3_REG ;
 int EFUSE_BLK1_RDATA4_REG ;
 int EFUSE_BLK1_RDATA5_REG ;
 int EFUSE_BLK1_RDATA6_REG ;
 int EFUSE_BLK1_RDATA7_REG ;
 int EFUSE_BLK1_WDATA0_REG ;
 int EFUSE_CODING_SCHEME ;
 scalar_t__ EFUSE_CODING_SCHEME_VAL_34 ;
 scalar_t__ EFUSE_CODING_SCHEME_VAL_NONE ;
 scalar_t__ EFUSE_DISABLE_DL_CACHE ;
 scalar_t__ EFUSE_DISABLE_DL_DECRYPT ;
 scalar_t__ EFUSE_DISABLE_DL_ENCRYPT ;
 scalar_t__ EFUSE_FLASH_CRYPT_CONFIG_M ;
 scalar_t__ EFUSE_RD_CONSOLE_DEBUG_DISABLE ;
 scalar_t__ EFUSE_RD_DISABLE_JTAG ;
 scalar_t__ EFUSE_RD_DIS_BLK1 ;
 scalar_t__ EFUSE_WR_DIS_BLK1 ;
 int ESP_ERR_INVALID_STATE ;
 int ESP_ERR_NOT_SUPPORTED ;
 int ESP_LOGE (int ,char*,...) ;
 int ESP_LOGI (int ,char*) ;
 int ESP_LOGW (int ,char*) ;
 int ESP_OK ;
 scalar_t__ REG_GET_FIELD (int ,int ) ;
 scalar_t__ REG_READ (int ) ;
 int REG_WRITE (int ,scalar_t__) ;
 int TAG ;
 int esp_efuse_burn_new_values () ;
 int esp_efuse_write_random_key (int ) ;

__attribute__((used)) static esp_err_t initialise_flash_encryption(void)
{
    uint32_t coding_scheme = REG_GET_FIELD(EFUSE_BLK0_RDATA6_REG, EFUSE_CODING_SCHEME);
    if (coding_scheme != EFUSE_CODING_SCHEME_VAL_NONE && coding_scheme != EFUSE_CODING_SCHEME_VAL_34) {
        ESP_LOGE(TAG, "Unknown/unsupported CODING_SCHEME value 0x%x", coding_scheme);
        return ESP_ERR_NOT_SUPPORTED;
    }




    uint32_t dis_reg = REG_READ(EFUSE_BLK0_RDATA0_REG);
    bool efuse_key_read_protected = dis_reg & EFUSE_RD_DIS_BLK1;
    bool efuse_key_write_protected = dis_reg & EFUSE_WR_DIS_BLK1;
    if (efuse_key_read_protected == 0
        && efuse_key_write_protected == 0
        && REG_READ(EFUSE_BLK1_RDATA0_REG) == 0
        && REG_READ(EFUSE_BLK1_RDATA1_REG) == 0
        && REG_READ(EFUSE_BLK1_RDATA2_REG) == 0
        && REG_READ(EFUSE_BLK1_RDATA3_REG) == 0
        && REG_READ(EFUSE_BLK1_RDATA4_REG) == 0
        && REG_READ(EFUSE_BLK1_RDATA5_REG) == 0
        && REG_READ(EFUSE_BLK1_RDATA6_REG) == 0
        && REG_READ(EFUSE_BLK1_RDATA7_REG) == 0) {
        ESP_LOGI(TAG, "Generating new flash encryption key...");
        esp_efuse_write_random_key(EFUSE_BLK1_WDATA0_REG);
        esp_efuse_burn_new_values();

        ESP_LOGI(TAG, "Read & write protecting new key...");
        REG_WRITE(EFUSE_BLK0_WDATA0_REG, EFUSE_WR_DIS_BLK1 | EFUSE_RD_DIS_BLK1);
        esp_efuse_burn_new_values();
    } else {

        if(!(efuse_key_read_protected && efuse_key_write_protected)) {
            ESP_LOGE(TAG, "Flash encryption key has to be either unset or both read and write protected");
            return ESP_ERR_INVALID_STATE;
        }
        ESP_LOGW(TAG, "Using pre-loaded flash encryption key in EFUSE block 1");
    }
    ESP_LOGI(TAG, "Setting CRYPT_CONFIG efuse to 0xF");
    REG_WRITE(EFUSE_BLK0_WDATA5_REG, EFUSE_FLASH_CRYPT_CONFIG_M);
    esp_efuse_burn_new_values();

    uint32_t new_wdata6 = 0;

    ESP_LOGI(TAG, "Disable UART bootloader encryption...");
    new_wdata6 |= EFUSE_DISABLE_DL_ENCRYPT;




    ESP_LOGI(TAG, "Disable UART bootloader decryption...");
    new_wdata6 |= EFUSE_DISABLE_DL_DECRYPT;




    ESP_LOGI(TAG, "Disable UART bootloader MMU cache...");
    new_wdata6 |= EFUSE_DISABLE_DL_CACHE;




    ESP_LOGI(TAG, "Disable JTAG...");
    new_wdata6 |= EFUSE_RD_DISABLE_JTAG;




    ESP_LOGI(TAG, "Disable ROM BASIC interpreter fallback...");
    new_wdata6 |= EFUSE_RD_CONSOLE_DEBUG_DISABLE;




    if (new_wdata6 != 0) {
        REG_WRITE(EFUSE_BLK0_WDATA6_REG, new_wdata6);
        esp_efuse_burn_new_values();
    }

    return ESP_OK;
}
