
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ adc_unit_t ;


 scalar_t__ ADC_UNIT_1 ;
 int EFUSE_RD_ADC1_TP_HIGH ;
 int EFUSE_RD_ADC2_TP_HIGH ;
 int REG_GET_FIELD (int ,int ) ;
 int TP_HIGH1_OFFSET ;
 int TP_HIGH2_OFFSET ;
 int TP_HIGH_MASK ;
 int TP_REG ;
 int TP_STEP_SIZE ;
 int decode_bits (int,int ,int) ;

__attribute__((used)) static uint32_t read_efuse_tp_high(adc_unit_t adc_num)
{

    uint32_t ret;
    uint32_t bits;

    if (adc_num == ADC_UNIT_1) {
        ret = TP_HIGH1_OFFSET;
        bits = REG_GET_FIELD(TP_REG, EFUSE_RD_ADC1_TP_HIGH);
    } else {
        ret = TP_HIGH2_OFFSET;
        bits = REG_GET_FIELD(TP_REG, EFUSE_RD_ADC2_TP_HIGH);
    }
    ret += decode_bits(bits, TP_HIGH_MASK, 1) * TP_STEP_SIZE;
    return ret;
}
