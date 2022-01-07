
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CW_FREQUENCY_STEP ;
 int DAC_CHANNEL_1 ;
 int ESP_LOGI (int ,char*) ;
 int REG_SET_FIELD (int ,int ,int ) ;
 int RTC_CLK_8M_DIV ;
 int RTC_CNTL_CK8M_DIV_SEL ;
 int RTC_CNTL_CLK_CONF_REG ;
 int SENS_DAC_CW_EN1_M ;
 int SENS_DAC_INV1 ;
 int SENS_DAC_INV1_S ;
 int SENS_SAR_DAC_CTRL1_REG ;
 int SENS_SAR_DAC_CTRL2_REG ;
 int SENS_SW_FSTEP ;
 int SENS_SW_FSTEP_S ;
 int SENS_SW_TONE_EN ;
 int SET_PERI_REG_BITS (int ,int ,int,int ) ;
 int SET_PERI_REG_MASK (int ,int ) ;
 int TAG ;
 int dac_output_enable (int ) ;

__attribute__((used)) static void enable_cosine_generator(void)
{

    SET_PERI_REG_MASK(SENS_SAR_DAC_CTRL1_REG, SENS_SW_TONE_EN);

    SET_PERI_REG_MASK(SENS_SAR_DAC_CTRL2_REG, SENS_DAC_CW_EN1_M);

    SET_PERI_REG_BITS(SENS_SAR_DAC_CTRL2_REG, SENS_DAC_INV1, 2, SENS_DAC_INV1_S);





    SET_PERI_REG_BITS(SENS_SAR_DAC_CTRL1_REG, SENS_SW_FSTEP, CW_FREQUENCY_STEP, SENS_SW_FSTEP_S);

    dac_output_enable(DAC_CHANNEL_1);
}
