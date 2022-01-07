
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int esp_err_t ;
typedef int esp_efuse_desc_t ;


 int EFUSE_LOCK_ACQUIRE () ;
 int EFUSE_LOCK_RELEASE () ;
 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 int esp_efuse_utility_fill_buff ;
 int esp_efuse_utility_get_number_of_items (size_t,int) ;
 int esp_efuse_utility_process (int const**,void*,size_t,int ) ;
 int memset (int *,int ,int ) ;

esp_err_t esp_efuse_read_field_blob(const esp_efuse_desc_t* field[], void* dst, size_t dst_size_bits)
{
    EFUSE_LOCK_ACQUIRE();
    esp_err_t err = ESP_OK;
    if (field == ((void*)0) || dst == ((void*)0) || dst_size_bits == 0) {
        err = ESP_ERR_INVALID_ARG;
    } else {
        memset((uint8_t *)dst, 0, esp_efuse_utility_get_number_of_items(dst_size_bits, 8));
        err = esp_efuse_utility_process(field, dst, dst_size_bits, esp_efuse_utility_fill_buff);
    }
    EFUSE_LOCK_RELEASE();
    return err;
}
