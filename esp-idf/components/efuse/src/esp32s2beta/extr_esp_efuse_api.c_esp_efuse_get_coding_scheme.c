
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_efuse_coding_scheme_t ;
typedef scalar_t__ esp_efuse_block_t ;


 scalar_t__ EFUSE_BLK0 ;
 int EFUSE_CODING_SCHEME_NONE ;
 int EFUSE_CODING_SCHEME_RS ;
 int ESP_LOGD (int ,char*,int ) ;
 int TAG ;

esp_efuse_coding_scheme_t esp_efuse_get_coding_scheme(esp_efuse_block_t blk)
{
    esp_efuse_coding_scheme_t scheme;
    if (blk == EFUSE_BLK0) {
        scheme = EFUSE_CODING_SCHEME_NONE;
    } else {
        scheme = EFUSE_CODING_SCHEME_RS;
    }
    ESP_LOGD(TAG, "coding scheme %d", scheme);
    return scheme;
}
