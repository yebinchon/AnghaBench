
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_err_t ;
typedef int esp_efuse_desc_t ;


 int EFUSE_LOCK_ACQUIRE () ;
 int EFUSE_LOCK_RELEASE () ;
 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 int esp_efuse_utility_count_once ;
 int esp_efuse_utility_process (int const**,size_t*,int ,int ) ;

esp_err_t esp_efuse_read_field_cnt(const esp_efuse_desc_t* field[], size_t* out_cnt)
{
    EFUSE_LOCK_ACQUIRE();
    esp_err_t err = ESP_OK;
    if (field == ((void*)0) || out_cnt == ((void*)0)) {
        err = ESP_ERR_INVALID_ARG;
    } else {
        *out_cnt = 0;
        err = esp_efuse_utility_process(field, out_cnt, 0, esp_efuse_utility_count_once);
    }
    EFUSE_LOCK_RELEASE();
    return err;
}
