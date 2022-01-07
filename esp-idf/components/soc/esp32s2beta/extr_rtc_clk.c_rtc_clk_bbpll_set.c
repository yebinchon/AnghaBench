
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int rtc_xtal_freq_t ;
typedef scalar_t__ rtc_pll_t ;


 int CLEAR_PERI_REG_MASK (int ,int ) ;
 int DPORT_CPU_PER_CONF_REG ;
 int DPORT_PLL_FREQ_SEL ;
 int I2C_BBPLL ;
 int I2C_BBPLL_IR_CAL_ENX_CAP ;
 int I2C_BBPLL_IR_CAL_EXT_CAP ;
 int I2C_BBPLL_MODE_HF ;
 int I2C_BBPLL_OC_DCHGP_LSB ;
 int I2C_BBPLL_OC_DCUR ;
 int I2C_BBPLL_OC_DHREF_SEL_LSB ;
 int I2C_BBPLL_OC_DIV_7_0 ;
 int I2C_BBPLL_OC_DLREF_SEL_LSB ;
 int I2C_BBPLL_OC_DR1 ;
 int I2C_BBPLL_OC_DR3 ;
 int I2C_BBPLL_OC_REF_DIV ;
 int I2C_BBPLL_OR_CAL_CAP ;
 int I2C_READREG_MASK_RTC (int ,int ) ;
 int I2C_WRITEREG_MASK_RTC (int ,int ,int) ;
 int I2C_WRITEREG_RTC (int ,int ,int) ;
 scalar_t__ RTC_PLL_480M ;



 int SET_PERI_REG_MASK (int ,int ) ;
 int SOC_LOGE (int ,char*) ;
 int TAG ;

void rtc_clk_bbpll_set(rtc_xtal_freq_t xtal_freq, rtc_pll_t pll_freq)
{
    uint8_t div_ref;
    uint8_t div7_0;
    uint8_t dr1;
    uint8_t dr3;
    uint8_t dchgp;
    uint8_t dcur;

    if (pll_freq == RTC_PLL_480M) {




        SET_PERI_REG_MASK(DPORT_CPU_PER_CONF_REG, DPORT_PLL_FREQ_SEL);

        switch (xtal_freq) {
            case 128:
                div_ref = 0;
                div7_0 = 8;
                dr1 = 0;
                dr3 = 0;
                dchgp = 5;
                dcur = 4;
                break;
            case 129:
                div_ref = 12;
                div7_0 = 156;
                dr1 = 3;
                dr3 = 3;
                dchgp = 4;
                dcur = 1;
                break;
            case 130:
                div_ref = 11;
                div7_0 = 156;
                dr1 = 3;
                dr3 = 3;
                dchgp = 4;
                dcur = 1;
                break;
            default:
                div_ref = 0;
                div7_0 = 8;
                dr1 = 0;
                dr3 = 0;
                dchgp = 5;
                dcur = 4;
                break;
        }
        I2C_WRITEREG_RTC(I2C_BBPLL, I2C_BBPLL_MODE_HF, 0x6B);
    } else {



        CLEAR_PERI_REG_MASK(DPORT_CPU_PER_CONF_REG, DPORT_PLL_FREQ_SEL);

        switch (xtal_freq) {
            case 128:
                div_ref = 0;
                div7_0 = 4;
                dr1 = 0;
                dr3 = 0;
                dchgp = 5;
                dcur = 5;
                break;
            case 129:
                div_ref = 12;
                div7_0 = 236;
                dr1 = 3;
                dr3 = 3;
                dchgp = 0;
                dcur = 2;
                break;
            case 130:
                div_ref = 11;
                div7_0 = 236;
                dr1 = 3;
                dr3 = 3;
                dchgp = 0;
                dcur = 2;
                break;
            default:
                div_ref = 0;
                div7_0 = 4;
                dr1 = 0;
                dr3 = 0;
                dchgp = 5;
                dcur = 5;
                break;
        }
        I2C_WRITEREG_RTC(I2C_BBPLL, I2C_BBPLL_MODE_HF, 0x69);
    }
    uint8_t i2c_bbpll_lref = (dchgp << I2C_BBPLL_OC_DCHGP_LSB) | (div_ref);
    uint8_t i2c_bbpll_div_7_0 = div7_0;
    uint8_t i2c_bbpll_dcur = (2 << I2C_BBPLL_OC_DLREF_SEL_LSB ) | (1 << I2C_BBPLL_OC_DHREF_SEL_LSB) | dcur;
    I2C_WRITEREG_RTC(I2C_BBPLL, I2C_BBPLL_OC_REF_DIV, i2c_bbpll_lref);
    I2C_WRITEREG_RTC(I2C_BBPLL, I2C_BBPLL_OC_DIV_7_0, i2c_bbpll_div_7_0);
    I2C_WRITEREG_MASK_RTC(I2C_BBPLL, I2C_BBPLL_OC_DR1, dr1);
    I2C_WRITEREG_MASK_RTC(I2C_BBPLL, I2C_BBPLL_OC_DR3, dr3);
    I2C_WRITEREG_RTC(I2C_BBPLL, I2C_BBPLL_OC_DCUR, i2c_bbpll_dcur);


    I2C_WRITEREG_MASK_RTC(I2C_BBPLL, I2C_BBPLL_IR_CAL_ENX_CAP, 1);
    for (int ext_cap = 0; ext_cap < 16; ext_cap++) {
        uint8_t cal_result;
        I2C_WRITEREG_MASK_RTC(I2C_BBPLL, I2C_BBPLL_IR_CAL_EXT_CAP, ext_cap);
        cal_result = I2C_READREG_MASK_RTC(I2C_BBPLL, I2C_BBPLL_OR_CAL_CAP);
        if (cal_result == 0) {
            break;
        }
        if(ext_cap == 15) {
            SOC_LOGE(TAG, "BBPLL SOFTWARE CAL FAIL");
        }
    }
}
