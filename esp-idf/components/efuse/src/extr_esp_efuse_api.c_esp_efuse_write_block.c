
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int esp_err_t ;
struct TYPE_3__ {scalar_t__ member_0; size_t member_1; size_t member_2; } ;
typedef TYPE_1__ esp_efuse_desc_t ;
typedef scalar_t__ esp_efuse_block_t ;


 scalar_t__ EFUSE_BLK0 ;
 scalar_t__ EFUSE_BLK_MAX ;
 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 int esp_efuse_write_field_blob (TYPE_1__ const**,void const*,size_t) ;

esp_err_t esp_efuse_write_block(esp_efuse_block_t blk, const void* src_key, size_t offset_in_bits, size_t size_bits)
{
    esp_err_t err = ESP_OK;
    if (blk == EFUSE_BLK0 || blk >= EFUSE_BLK_MAX || src_key == ((void*)0) || size_bits == 0) {
        err = ESP_ERR_INVALID_ARG;
    } else {
        const esp_efuse_desc_t field_desc[] = {
            {blk, offset_in_bits, size_bits},
        };

        const esp_efuse_desc_t* field[] = {
            &field_desc[0],
            ((void*)0)
        };
        err = esp_efuse_write_field_blob(field, src_key, size_bits);
    }
    return err;
}
