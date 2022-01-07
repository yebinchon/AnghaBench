
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int EFUSE_ADC_VREF ;
 int REG_GET_FIELD (int ,int ) ;
 int VREF_FORMAT ;
 int VREF_MASK ;
 int VREF_OFFSET ;
 int VREF_REG ;
 int VREF_STEP_SIZE ;
 int decode_bits (int,int ,int ) ;

__attribute__((used)) static uint32_t read_efuse_vref(void)
{

    uint32_t ret = VREF_OFFSET;
    uint32_t bits = REG_GET_FIELD(VREF_REG, EFUSE_ADC_VREF);
    ret += decode_bits(bits, VREF_MASK, VREF_FORMAT) * VREF_STEP_SIZE;
    return ret;
}
