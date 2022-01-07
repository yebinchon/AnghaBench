
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
typedef int rtc_cal_sel_t ;


 int CLEAR_PERI_REG_MASK (int ,int ) ;
 scalar_t__ GET_PERI_REG_MASK (int ,int ) ;
 int MHZ ;
 int REG_GET_FIELD (int ,int ) ;
 int REG_SET_FIELD (int ,int ,int) ;
 int RTC_CAL_32K_XTAL ;
 int RTC_CAL_8MD256 ;
 int RTC_CNTL_CLK_CONF_REG ;
 int RTC_CNTL_DIG_CLK8M_D256_EN ;
 int RTC_CNTL_DIG_XTAL32K_EN ;
 int RTC_FAST_CLK_FREQ_APPROX ;
 int SET_PERI_REG_MASK (int ,int ) ;
 int TIMG_RTCCALICFG1_REG (int ) ;
 int TIMG_RTCCALICFG2_REG (int ) ;
 int TIMG_RTCCALICFG_REG (int ) ;
 int TIMG_RTC_CALI_CLK_SEL ;
 int TIMG_RTC_CALI_MAX ;
 int TIMG_RTC_CALI_RDY ;
 int TIMG_RTC_CALI_START ;
 int TIMG_RTC_CALI_START_CYCLING ;
 int TIMG_RTC_CALI_TIMEOUT ;
 int TIMG_RTC_CALI_TIMEOUT_THRES ;
 int TIMG_RTC_CALI_VALUE ;
 int ets_delay_us (int) ;

uint32_t rtc_clk_cal_internal(rtc_cal_sel_t cal_clk, uint32_t slowclk_cycles)
{

    int dig_32k_xtal_state = REG_GET_FIELD(RTC_CNTL_CLK_CONF_REG, RTC_CNTL_DIG_XTAL32K_EN);
    if (cal_clk == RTC_CAL_32K_XTAL && !dig_32k_xtal_state) {
        REG_SET_FIELD(RTC_CNTL_CLK_CONF_REG, RTC_CNTL_DIG_XTAL32K_EN, 1);
    }

    if (cal_clk == RTC_CAL_8MD256) {
        SET_PERI_REG_MASK(RTC_CNTL_CLK_CONF_REG, RTC_CNTL_DIG_CLK8M_D256_EN);
    }

    REG_SET_FIELD(TIMG_RTCCALICFG_REG(0), TIMG_RTC_CALI_CLK_SEL, cal_clk);



    if (!GET_PERI_REG_MASK(TIMG_RTCCALICFG2_REG(0), TIMG_RTC_CALI_TIMEOUT)) {
        if (GET_PERI_REG_MASK(TIMG_RTCCALICFG_REG(0), TIMG_RTC_CALI_START_CYCLING)) {
            while(!GET_PERI_REG_MASK(TIMG_RTCCALICFG_REG(0), TIMG_RTC_CALI_RDY));
        }
    }
    CLEAR_PERI_REG_MASK(TIMG_RTCCALICFG_REG(0), TIMG_RTC_CALI_START_CYCLING);
    REG_SET_FIELD(TIMG_RTCCALICFG_REG(0), TIMG_RTC_CALI_MAX, slowclk_cycles);



    uint32_t expected_freq;
    if (cal_clk == RTC_CAL_32K_XTAL) {
        REG_SET_FIELD(TIMG_RTCCALICFG2_REG(0), TIMG_RTC_CALI_TIMEOUT_THRES, (slowclk_cycles << 13));
        expected_freq = 32768;
    } else if (cal_clk == RTC_CAL_8MD256) {
        REG_SET_FIELD(TIMG_RTCCALICFG2_REG(0), TIMG_RTC_CALI_TIMEOUT_THRES, (slowclk_cycles << 13));
        expected_freq = RTC_FAST_CLK_FREQ_APPROX / 256;
    } else {
        REG_SET_FIELD(TIMG_RTCCALICFG2_REG(0), TIMG_RTC_CALI_TIMEOUT_THRES, (slowclk_cycles << 11));
        expected_freq = 90000;
    }
    uint32_t us_time_estimate = (uint32_t) (((uint64_t) slowclk_cycles) * MHZ / expected_freq);

    CLEAR_PERI_REG_MASK(TIMG_RTCCALICFG_REG(0), TIMG_RTC_CALI_START);
    SET_PERI_REG_MASK(TIMG_RTCCALICFG_REG(0), TIMG_RTC_CALI_START);


    ets_delay_us(us_time_estimate);
    uint32_t cal_val;
    while (1) {
        if (GET_PERI_REG_MASK(TIMG_RTCCALICFG_REG(0), TIMG_RTC_CALI_RDY)) {
            cal_val = REG_GET_FIELD(TIMG_RTCCALICFG1_REG(0), TIMG_RTC_CALI_VALUE);
            break;
        }
        if (GET_PERI_REG_MASK(TIMG_RTCCALICFG2_REG(0), TIMG_RTC_CALI_TIMEOUT)) {
            cal_val = 0;
            break;
        }
    }
    CLEAR_PERI_REG_MASK(TIMG_RTCCALICFG_REG(0), TIMG_RTC_CALI_START);

    REG_SET_FIELD(RTC_CNTL_CLK_CONF_REG, RTC_CNTL_DIG_XTAL32K_EN, dig_32k_xtal_state);

    if (cal_clk == RTC_CAL_8MD256) {
        CLEAR_PERI_REG_MASK(RTC_CNTL_CLK_CONF_REG, RTC_CNTL_DIG_CLK8M_D256_EN);
    }

    return cal_val;
}
