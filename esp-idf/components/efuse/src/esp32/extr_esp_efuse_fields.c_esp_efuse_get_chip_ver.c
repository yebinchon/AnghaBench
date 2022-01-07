
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int APB_CTRL_DATE_REG ;
 int ESP_EFUSE_CHIP_VER_REV1 ;
 int ESP_EFUSE_CHIP_VER_REV2 ;
 int REG_READ (int ) ;
 int esp_efuse_read_field_blob (int ,int*,int) ;

uint8_t esp_efuse_get_chip_ver(void)
{
    uint8_t eco_bit0, eco_bit1, eco_bit2;
    esp_efuse_read_field_blob(ESP_EFUSE_CHIP_VER_REV1, &eco_bit0, 1);
    esp_efuse_read_field_blob(ESP_EFUSE_CHIP_VER_REV2, &eco_bit1, 1);
    eco_bit2 = (REG_READ(APB_CTRL_DATE_REG) & 0x80000000) >> 31;
    uint32_t combine_value = (eco_bit2 << 2) | (eco_bit1 << 1) | eco_bit0;
    uint8_t chip_ver = 0;
    switch (combine_value) {
    case 0:
        chip_ver = 0;
        break;
    case 1:
        chip_ver = 1;
        break;
    case 3:
        chip_ver = 2;
        break;
    case 7:
        chip_ver = 3;
        break;
    default:
        chip_ver = 0;
        break;
    }
    return chip_ver;
}
