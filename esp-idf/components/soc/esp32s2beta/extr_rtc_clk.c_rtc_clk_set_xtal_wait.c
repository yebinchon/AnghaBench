
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ rtc_slow_freq_t ;
typedef int rtc_cal_sel_t ;


 int REG_SET_FIELD (int ,int ,int) ;
 int RTC_CAL_32K_XTAL ;
 int RTC_CAL_8MD256 ;
 int RTC_CAL_RTC_MUX ;
 int RTC_CLK_CAL_FRACT ;
 int RTC_CNTL_TIMER1_REG ;
 int RTC_CNTL_XTL_BUF_WAIT ;
 scalar_t__ RTC_SLOW_FREQ_32K_XTAL ;
 scalar_t__ RTC_SLOW_FREQ_8MD256 ;
 int rtc_clk_cal (int ,int) ;
 scalar_t__ rtc_clk_slow_freq_get () ;

void rtc_clk_set_xtal_wait(void)
{




    rtc_slow_freq_t slow_clk_freq = rtc_clk_slow_freq_get();
    rtc_slow_freq_t rtc_slow_freq_x32k = RTC_SLOW_FREQ_32K_XTAL;
    rtc_slow_freq_t rtc_slow_freq_8MD256 = RTC_SLOW_FREQ_8MD256;
    rtc_cal_sel_t cal_clk = RTC_CAL_RTC_MUX;
    if (slow_clk_freq == (rtc_slow_freq_x32k)) {
        cal_clk = RTC_CAL_32K_XTAL;
    } else if (slow_clk_freq == rtc_slow_freq_8MD256) {
        cal_clk = RTC_CAL_8MD256;
    }
    uint32_t slow_clk_period = rtc_clk_cal(cal_clk, 2000);
    uint32_t xtal_wait_1ms = 100;
    if (slow_clk_period) {
        xtal_wait_1ms = (1000 << RTC_CLK_CAL_FRACT) / slow_clk_period;
    }
    REG_SET_FIELD(RTC_CNTL_TIMER1_REG, RTC_CNTL_XTL_BUF_WAIT, xtal_wait_1ms);
}
