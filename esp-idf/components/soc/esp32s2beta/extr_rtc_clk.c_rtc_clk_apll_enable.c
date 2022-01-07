
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int APLL_CAL_DELAY_1 ;
 int APLL_CAL_DELAY_2 ;
 int APLL_CAL_DELAY_3 ;
 int APLL_SDM_STOP_VAL_1 ;
 int APLL_SDM_STOP_VAL_2_REV1 ;
 int I2C_APLL ;
 int I2C_APLL_DSDM0 ;
 int I2C_APLL_DSDM1 ;
 int I2C_APLL_DSDM2 ;
 int I2C_APLL_IR_CAL_DELAY ;
 int I2C_APLL_OR_CAL_END ;
 int I2C_APLL_OR_OUTPUT_DIV ;
 int I2C_APLL_SDM_STOP ;
 int I2C_READREG_MASK_RTC (int ,int ) ;
 int I2C_WRITEREG_MASK_RTC (int ,int ,int ) ;
 int I2C_WRITEREG_RTC (int ,int ,int ) ;
 int REG_SET_FIELD (int ,int ,int) ;
 int RTC_CNTL_ANA_CONF_REG ;
 int RTC_CNTL_PLLA_FORCE_PD ;
 int RTC_CNTL_PLLA_FORCE_PU ;
 int ets_delay_us (int) ;

void rtc_clk_apll_enable(bool enable, uint32_t sdm0, uint32_t sdm1, uint32_t sdm2, uint32_t o_div)
{
    REG_SET_FIELD(RTC_CNTL_ANA_CONF_REG, RTC_CNTL_PLLA_FORCE_PD, enable ? 0 : 1);
    REG_SET_FIELD(RTC_CNTL_ANA_CONF_REG, RTC_CNTL_PLLA_FORCE_PU, enable ? 1 : 0);
    if (enable) {
        I2C_WRITEREG_MASK_RTC(I2C_APLL, I2C_APLL_DSDM2, sdm2);
        I2C_WRITEREG_MASK_RTC(I2C_APLL, I2C_APLL_DSDM0, sdm0);
        I2C_WRITEREG_MASK_RTC(I2C_APLL, I2C_APLL_DSDM1, sdm1);
        I2C_WRITEREG_RTC(I2C_APLL, I2C_APLL_SDM_STOP, APLL_SDM_STOP_VAL_1);
        I2C_WRITEREG_RTC(I2C_APLL, I2C_APLL_SDM_STOP, APLL_SDM_STOP_VAL_2_REV1);
        I2C_WRITEREG_MASK_RTC(I2C_APLL, I2C_APLL_OR_OUTPUT_DIV, o_div);


        I2C_WRITEREG_RTC(I2C_APLL, I2C_APLL_IR_CAL_DELAY, APLL_CAL_DELAY_1);
        I2C_WRITEREG_RTC(I2C_APLL, I2C_APLL_IR_CAL_DELAY, APLL_CAL_DELAY_2);
        I2C_WRITEREG_RTC(I2C_APLL, I2C_APLL_IR_CAL_DELAY, APLL_CAL_DELAY_3);


        while (!(I2C_READREG_MASK_RTC(I2C_APLL, I2C_APLL_OR_CAL_END))) {

            ets_delay_us(1);
        }
    }
}
