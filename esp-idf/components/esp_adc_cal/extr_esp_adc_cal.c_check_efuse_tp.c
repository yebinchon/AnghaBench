
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BLK3_RESERVED_REG ;
 scalar_t__ CHECK_BLK3_FLAG ;
 int EFUSE_RD_ADC1_TP_HIGH ;
 int EFUSE_RD_ADC1_TP_LOW ;
 int EFUSE_RD_ADC2_TP_HIGH ;
 int EFUSE_RD_ADC2_TP_LOW ;
 int EFUSE_RD_BLK3_PART_RESERVE ;
 scalar_t__ REG_GET_FIELD (int ,int ) ;
 int TP_REG ;

__attribute__((used)) static bool check_efuse_tp(void)
{

    if (CHECK_BLK3_FLAG && (REG_GET_FIELD(BLK3_RESERVED_REG, EFUSE_RD_BLK3_PART_RESERVE) == 0)) {
        return 0;
    }

    if ((REG_GET_FIELD(TP_REG, EFUSE_RD_ADC1_TP_LOW) != 0) &&
        (REG_GET_FIELD(TP_REG, EFUSE_RD_ADC2_TP_LOW) != 0) &&
        (REG_GET_FIELD(TP_REG, EFUSE_RD_ADC1_TP_HIGH) != 0) &&
        (REG_GET_FIELD(TP_REG, EFUSE_RD_ADC2_TP_HIGH) != 0)) {
        return 1;
    } else {
        return 0;
    }
}
