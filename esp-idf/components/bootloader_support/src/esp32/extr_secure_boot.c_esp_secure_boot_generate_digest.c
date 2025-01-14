
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_4__ {scalar_t__ hash_appended; } ;
struct TYPE_5__ {scalar_t__ image_len; TYPE_1__ image; int member_0; } ;
typedef TYPE_2__ esp_image_metadata_t ;
typedef scalar_t__ esp_err_t ;


 int EFUSE_BLK0_RDATA0_REG ;
 int EFUSE_BLK0_RDATA6_REG ;
 int EFUSE_BLK2_RDATA0_REG ;
 int EFUSE_BLK2_RDATA1_REG ;
 int EFUSE_BLK2_RDATA2_REG ;
 int EFUSE_BLK2_RDATA3_REG ;
 int EFUSE_BLK2_RDATA4_REG ;
 int EFUSE_BLK2_RDATA5_REG ;
 int EFUSE_BLK2_RDATA6_REG ;
 int EFUSE_BLK2_RDATA7_REG ;
 int EFUSE_BLK2_WDATA0_REG ;
 int EFUSE_CODING_SCHEME ;
 scalar_t__ EFUSE_CODING_SCHEME_VAL_34 ;
 scalar_t__ EFUSE_CODING_SCHEME_VAL_NONE ;
 scalar_t__ EFUSE_RD_DIS_BLK2 ;
 scalar_t__ EFUSE_WR_DIS_BLK2 ;
 scalar_t__ ESP_ERR_NOT_SUPPORTED ;
 scalar_t__ ESP_FAIL ;
 scalar_t__ ESP_IMAGE_HASH_LEN ;
 int ESP_LOGE (int ,char*,...) ;
 int ESP_LOGI (int ,char*) ;
 int ESP_LOGW (int ,char*) ;
 scalar_t__ ESP_OK ;
 scalar_t__ REG_GET_FIELD (int ,int ) ;
 scalar_t__ REG_READ (int ) ;
 int TAG ;
 int burn_efuses () ;
 int esp_efuse_write_random_key (int ) ;
 scalar_t__ esp_image_verify_bootloader_data (TYPE_2__*) ;
 scalar_t__ esp_secure_boot_enabled () ;
 int secure_boot_generate (scalar_t__) ;

esp_err_t esp_secure_boot_generate_digest(void)
{
    esp_err_t err;
    if (esp_secure_boot_enabled()) {
        ESP_LOGI(TAG, "bootloader secure boot is already enabled."
                      " No need to generate digest. continuing..");
        return ESP_OK;
    }

    uint32_t coding_scheme = REG_GET_FIELD(EFUSE_BLK0_RDATA6_REG, EFUSE_CODING_SCHEME);
    if (coding_scheme != EFUSE_CODING_SCHEME_VAL_NONE && coding_scheme != EFUSE_CODING_SCHEME_VAL_34) {
        ESP_LOGE(TAG, "Unknown/unsupported CODING_SCHEME value 0x%x", coding_scheme);
        return ESP_ERR_NOT_SUPPORTED;
    }


    esp_image_metadata_t bootloader_data = { 0 };
    err = esp_image_verify_bootloader_data(&bootloader_data);
    if (err != ESP_OK) {
        ESP_LOGE(TAG, "bootloader image appears invalid! error %d", err);
        return err;
    }


    uint32_t dis_reg = REG_READ(EFUSE_BLK0_RDATA0_REG);
    bool efuse_key_read_protected = dis_reg & EFUSE_RD_DIS_BLK2;
    bool efuse_key_write_protected = dis_reg & EFUSE_WR_DIS_BLK2;
    if (efuse_key_read_protected == 0
        && efuse_key_write_protected == 0
        && REG_READ(EFUSE_BLK2_RDATA0_REG) == 0
        && REG_READ(EFUSE_BLK2_RDATA1_REG) == 0
        && REG_READ(EFUSE_BLK2_RDATA2_REG) == 0
        && REG_READ(EFUSE_BLK2_RDATA3_REG) == 0
        && REG_READ(EFUSE_BLK2_RDATA4_REG) == 0
        && REG_READ(EFUSE_BLK2_RDATA5_REG) == 0
        && REG_READ(EFUSE_BLK2_RDATA6_REG) == 0
        && REG_READ(EFUSE_BLK2_RDATA7_REG) == 0) {
        ESP_LOGI(TAG, "Generating new secure boot key...");
        esp_efuse_write_random_key(EFUSE_BLK2_WDATA0_REG);
        burn_efuses();
    } else {
        ESP_LOGW(TAG, "Using pre-loaded secure boot key in EFUSE block 2");
    }


    ESP_LOGI(TAG, "Generating secure boot digest...");
    uint32_t image_len = bootloader_data.image_len;
    if(bootloader_data.image.hash_appended) {

        image_len -= ESP_IMAGE_HASH_LEN;
    }
    if (0 == secure_boot_generate(image_len)){
        ESP_LOGE(TAG, "secure boot generation failed");
        return ESP_FAIL;
    }
    ESP_LOGI(TAG, "Digest generation complete.");

    return ESP_OK;
}
