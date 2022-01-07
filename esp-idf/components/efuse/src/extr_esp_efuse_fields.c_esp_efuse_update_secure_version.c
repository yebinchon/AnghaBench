
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long uint32_t ;
typedef int esp_err_t ;
typedef scalar_t__ esp_efuse_coding_scheme_t ;


 unsigned long long CONFIG_BOOTLOADER_APP_SEC_VER_SIZE_EFUSE_FIELD ;
 scalar_t__ EFUSE_CODING_SCHEME_NONE ;
 int ESP_EFUSE_SECURE_VERSION_NUM_BLOCK ;
 int ESP_ERR_INVALID_ARG ;
 int ESP_ERR_NOT_SUPPORTED ;
 int ESP_FAIL ;
 int ESP_LOGE (int ,char*,...) ;
 int ESP_LOGI (int ,char*,unsigned long long) ;
 int ESP_OK ;
 int TAG ;
 scalar_t__ esp_efuse_get_coding_scheme (int ) ;
 unsigned long long esp_efuse_read_secure_version () ;
 int write_anti_rollback (unsigned long long) ;

esp_err_t esp_efuse_update_secure_version(uint32_t secure_version)
{
    return ESP_OK;
}
