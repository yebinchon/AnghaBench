
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EFUSE_RD_ADC_VREF ;
 scalar_t__ REG_GET_FIELD (int ,int ) ;
 int VREF_REG ;

__attribute__((used)) static bool check_efuse_vref(void)
{

    return (REG_GET_FIELD(VREF_REG, EFUSE_RD_ADC_VREF) != 0) ? 1 : 0;
}
