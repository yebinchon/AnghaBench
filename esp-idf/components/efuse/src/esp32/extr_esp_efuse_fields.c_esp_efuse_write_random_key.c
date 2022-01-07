
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint32_t ;
typedef int raw ;
typedef scalar_t__ esp_err_t ;
typedef int buf ;


 int EFUSE_BLK2 ;
 scalar_t__ EFUSE_CODING_SCHEME_NONE ;
 int ESP_LOGV (int ,char*,int,...) ;
 scalar_t__ ESP_OK ;
 int REG_WRITE (scalar_t__,scalar_t__) ;
 int TAG ;
 int assert (int) ;
 int bootloader_fill_random (scalar_t__*,int) ;
 int bzero (scalar_t__*,int) ;
 scalar_t__ esp_efuse_get_coding_scheme (int ) ;
 scalar_t__ esp_efuse_utility_apply_34_encoding (scalar_t__*,scalar_t__*,int) ;

void esp_efuse_write_random_key(uint32_t blk_wdata0_reg)
{
    uint32_t buf[8];
    uint8_t raw[24];

    if (esp_efuse_get_coding_scheme(EFUSE_BLK2) == EFUSE_CODING_SCHEME_NONE) {
        bootloader_fill_random(buf, sizeof(buf));
    } else {
        bootloader_fill_random(raw, sizeof(raw));
        esp_err_t r = esp_efuse_utility_apply_34_encoding(raw, buf, sizeof(raw));
        (void) r;
        assert(r == ESP_OK);
    }

    ESP_LOGV(TAG, "Writing random values to address 0x%08x", blk_wdata0_reg);
    for (int i = 0; i < 8; i++) {
        ESP_LOGV(TAG, "EFUSE_BLKx_WDATA%d_REG = 0x%08x", i, buf[i]);
        REG_WRITE(blk_wdata0_reg + 4*i, buf[i]);
    }
    bzero(buf, sizeof(buf));
    bzero(raw, sizeof(raw));
}
