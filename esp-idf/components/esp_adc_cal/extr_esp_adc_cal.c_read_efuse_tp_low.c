
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ adc_unit_t ;


 scalar_t__ ADC_UNIT_1 ;
 int EFUSE_RD_ADC1_TP_LOW ;
 int EFUSE_RD_ADC2_TP_LOW ;
 int REG_GET_FIELD (int ,int ) ;
 int TP_LOW1_OFFSET ;
 int TP_LOW2_OFFSET ;
 int TP_LOW_MASK ;
 int TP_REG ;
 int TP_STEP_SIZE ;
 int decode_bits (int,int ,int) ;

__attribute__((used)) static uint32_t read_efuse_tp_low(adc_unit_t adc_num)
{

    uint32_t ret;
    uint32_t bits;

    if (adc_num == ADC_UNIT_1) {
        ret = TP_LOW1_OFFSET;
        bits = REG_GET_FIELD(TP_REG, EFUSE_RD_ADC1_TP_LOW);
    } else {
        ret = TP_LOW2_OFFSET;
        bits = REG_GET_FIELD(TP_REG, EFUSE_RD_ADC2_TP_LOW);
    }
    ret += decode_bits(bits, TP_LOW_MASK, 1) * TP_STEP_SIZE;
    return ret;
}
