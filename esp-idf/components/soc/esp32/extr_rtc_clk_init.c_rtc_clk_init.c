
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
typedef int rtc_xtal_freq_t ;
struct TYPE_7__ {int freq_mhz; } ;
typedef TYPE_1__ rtc_cpu_freq_config_t ;
struct TYPE_8__ {int xtal_freq; int cpu_freq_mhz; scalar_t__ slow_freq; scalar_t__ fast_freq; int clk_8m_div; int clk_8m_dfreq; int slow_clk_dcap; } ;
typedef TYPE_2__ rtc_clk_config_t ;


 int ANA_CONFIG_M ;
 int ANA_CONFIG_REG ;
 int ANA_CONFIG_S ;
 int APB_CLK_FREQ ;
 int APB_CTRL_PLL_TICK_CONF_REG ;
 int APB_CTRL_XTAL_TICK_CONF_REG ;
 int CLEAR_PERI_REG_MASK (int ,int) ;
 int I2C_APLL_M ;
 int I2C_BBPLL_M ;
 int MHZ ;
 int READ_PERI_REG (int ) ;
 scalar_t__ REG_GET_FIELD (int ,int ) ;
 int REG_SET_FIELD (int ,int ,int ) ;
 int REG_WRITE (int ,int) ;
 int RTC_CNTL_CK8M_DFREQ ;
 int RTC_CNTL_CK8M_DIV_SEL ;
 int RTC_CNTL_CLK_CONF_REG ;
 int RTC_CNTL_REG ;
 int RTC_CNTL_SCK_DCAP ;
 int RTC_CNTL_SOC_CLK_SEL ;
 scalar_t__ RTC_CNTL_SOC_CLK_SEL_PLL ;
 scalar_t__ RTC_FAST_FREQ_8M ;
 scalar_t__ RTC_SLOW_FREQ_32K_XTAL ;
 scalar_t__ RTC_SLOW_FREQ_8MD256 ;
 int RTC_XTAL_FREQ_26M ;
 int RTC_XTAL_FREQ_AUTO ;
 int RTC_XTAL_FREQ_REG ;
 int SET_PERI_REG_BITS (int ,int ,int ,int ) ;
 int SOC_LOGE (int ,char*) ;
 int SOC_LOGW (int ,char*,...) ;
 int TAG ;
 scalar_t__ XTHAL_GET_CCOUNT () ;
 int XTHAL_SET_CCOUNT (int) ;
 int abort () ;
 scalar_t__ clk_val_is_valid (int ) ;
 int rtc_clk_32k_enable (int) ;
 int rtc_clk_8m_enable (int,int) ;
 int rtc_clk_apb_freq_update (int) ;
 int rtc_clk_cpu_freq_get_config (TYPE_1__*) ;
 int rtc_clk_cpu_freq_mhz_to_config (int,TYPE_1__*) ;
 int rtc_clk_cpu_freq_set_config (TYPE_1__*) ;
 int rtc_clk_cpu_freq_to_xtal (int,int) ;
 int rtc_clk_fast_freq_set (scalar_t__) ;
 int rtc_clk_slow_freq_set (scalar_t__) ;
 int rtc_clk_xtal_freq_estimate () ;
 int rtc_clk_xtal_freq_get () ;
 int rtc_clk_xtal_freq_update (int) ;
 int uart_tx_wait_idle (int ) ;

void rtc_clk_init(rtc_clk_config_t cfg)
{
    rtc_cpu_freq_config_t old_config, new_config;
    if (REG_GET_FIELD(RTC_CNTL_CLK_CONF_REG, RTC_CNTL_SOC_CLK_SEL) == RTC_CNTL_SOC_CLK_SEL_PLL) {




        rtc_clk_cpu_freq_to_xtal(40, 1);
    }
    REG_SET_FIELD(RTC_CNTL_REG, RTC_CNTL_SCK_DCAP, cfg.slow_clk_dcap);
    REG_SET_FIELD(RTC_CNTL_CLK_CONF_REG, RTC_CNTL_CK8M_DFREQ, cfg.clk_8m_dfreq);


    REG_SET_FIELD(RTC_CNTL_CLK_CONF_REG, RTC_CNTL_CK8M_DIV_SEL, cfg.clk_8m_div);


    SET_PERI_REG_BITS(ANA_CONFIG_REG, ANA_CONFIG_M, ANA_CONFIG_M, ANA_CONFIG_S);
    CLEAR_PERI_REG_MASK(ANA_CONFIG_REG, I2C_APLL_M | I2C_BBPLL_M);


    rtc_xtal_freq_t xtal_freq = cfg.xtal_freq;
    if (xtal_freq == RTC_XTAL_FREQ_AUTO) {
        if (clk_val_is_valid(READ_PERI_REG(RTC_XTAL_FREQ_REG))) {

            xtal_freq = rtc_clk_xtal_freq_get();
        } else {

            xtal_freq = rtc_clk_xtal_freq_estimate();
            if (xtal_freq == RTC_XTAL_FREQ_AUTO) {
                SOC_LOGW(TAG, "Can't estimate XTAL frequency, assuming 26MHz");
                xtal_freq = RTC_XTAL_FREQ_26M;
            }
        }
    } else if (!clk_val_is_valid(READ_PERI_REG(RTC_XTAL_FREQ_REG))) {





        rtc_xtal_freq_t est_xtal_freq = rtc_clk_xtal_freq_estimate();
        if (est_xtal_freq != xtal_freq) {
            SOC_LOGW(TAG, "Possibly invalid CONFIG_ESP32_XTAL_FREQ setting (%dMHz). Detected %d MHz.",
                    xtal_freq, est_xtal_freq);
        }
    }
    uart_tx_wait_idle(0);
    rtc_clk_xtal_freq_update(xtal_freq);
    rtc_clk_apb_freq_update(xtal_freq * MHZ);



    rtc_clk_cpu_freq_get_config(&old_config);
    uint32_t freq_before = old_config.freq_mhz;

    bool res = rtc_clk_cpu_freq_mhz_to_config(cfg.cpu_freq_mhz, &new_config);
    if (!res) {
        SOC_LOGE(TAG, "invalid CPU frequency value");
        abort();
    }
    rtc_clk_cpu_freq_set_config(&new_config);


    REG_WRITE(APB_CTRL_XTAL_TICK_CONF_REG, xtal_freq - 1);
    REG_WRITE(APB_CTRL_PLL_TICK_CONF_REG, APB_CLK_FREQ / MHZ - 1);


    XTHAL_SET_CCOUNT( (uint64_t)XTHAL_GET_CCOUNT() * cfg.cpu_freq_mhz / freq_before );


    if (cfg.slow_freq == RTC_SLOW_FREQ_32K_XTAL) {
        rtc_clk_32k_enable(1);
    }
    if (cfg.fast_freq == RTC_FAST_FREQ_8M) {
        bool need_8md256 = cfg.slow_freq == RTC_SLOW_FREQ_8MD256;
        rtc_clk_8m_enable(1, need_8md256);
    }
    rtc_clk_fast_freq_set(cfg.fast_freq);
    rtc_clk_slow_freq_set(cfg.slow_freq);
}
