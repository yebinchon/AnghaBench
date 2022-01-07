
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EFUSE_BLK0_RDATA3_REG ;
 int EFUSE_RD_CHIP_CPU_FREQ_LOW ;
 int EFUSE_RD_CHIP_CPU_FREQ_RATED ;
 scalar_t__ REG_GET_BIT (int ,int ) ;

int bootloader_clock_get_rated_freq_mhz()
{

    if (REG_GET_BIT(EFUSE_BLK0_RDATA3_REG, EFUSE_RD_CHIP_CPU_FREQ_RATED) &&
        REG_GET_BIT(EFUSE_BLK0_RDATA3_REG, EFUSE_RD_CHIP_CPU_FREQ_LOW)) {
        return 160;
    }
    return 240;
}
