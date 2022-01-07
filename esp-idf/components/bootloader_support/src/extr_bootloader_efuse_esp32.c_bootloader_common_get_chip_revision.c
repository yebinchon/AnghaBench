
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int APB_CTRL_DATE_REG ;
 int EFUSE_BLK0_RDATA3_REG ;
 int EFUSE_BLK0_RDATA5_REG ;
 int REG_READ (int ) ;

uint8_t bootloader_common_get_chip_revision(void)
{
    uint8_t eco_bit0, eco_bit1, eco_bit2;
    eco_bit0 = (REG_READ(EFUSE_BLK0_RDATA3_REG) & 0xF000) >> 15;
    eco_bit1 = (REG_READ(EFUSE_BLK0_RDATA5_REG) & 0x100000) >> 20;
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
