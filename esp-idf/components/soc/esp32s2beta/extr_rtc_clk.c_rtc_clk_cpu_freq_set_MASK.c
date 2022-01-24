#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int rtc_xtal_freq_t ;
typedef  scalar_t__ rtc_cpu_freq_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int DIG_DBIAS_240M ; 
 int DIG_DBIAS_2M ; 
 int DIG_DBIAS_80M_160M ; 
 int DIG_DBIAS_XTAL ; 
 int /*<<< orphan*/  DPORT_CPUPERIOD_SEL ; 
 int /*<<< orphan*/  DPORT_CPU_PER_CONF_REG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int MHZ ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int RTC_CNTL_BBPLL_FORCE_PD ; 
 int RTC_CNTL_BBPLL_I2C_FORCE_PD ; 
 int RTC_CNTL_BB_I2C_FORCE_PD ; 
 int /*<<< orphan*/  RTC_CNTL_DIG_DBIAS_WAK ; 
 int /*<<< orphan*/  RTC_CNTL_OPTIONS0_REG ; 
 int /*<<< orphan*/  RTC_CNTL_REG ; 
 scalar_t__ RTC_CPU_320M_160M ; 
 scalar_t__ RTC_CPU_320M_80M ; 
 scalar_t__ RTC_CPU_FREQ_160M ; 
 scalar_t__ RTC_CPU_FREQ_240M ; 
 scalar_t__ RTC_CPU_FREQ_2M ; 
 scalar_t__ RTC_CPU_FREQ_80M ; 
 scalar_t__ RTC_CPU_FREQ_XTAL ; 
 int /*<<< orphan*/  RTC_PLL_320M ; 
 int /*<<< orphan*/  RTC_PLL_480M ; 
 int /*<<< orphan*/  RTC_PLL_NONE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SYSCON_PRE_DIV_CNT ; 
 int /*<<< orphan*/  SYSCON_SOC_CLK_SEL ; 
 int SYSCON_SOC_CLK_SEL_PLL ; 
 int SYSCON_SOC_CLK_SEL_XTL ; 
 int /*<<< orphan*/  SYSCON_SYSCLK_CONF_REG ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 
 int FUNC7 () ; 
 scalar_t__ s_cur_freq ; 
 int /*<<< orphan*/  s_cur_pll ; 

void FUNC8(rtc_cpu_freq_t cpu_freq)
{
    rtc_xtal_freq_t xtal_freq = FUNC7();
    /* Switch CPU to XTAL frequency first */
    FUNC2(RTC_CNTL_REG, RTC_CNTL_DIG_DBIAS_WAK, DIG_DBIAS_XTAL);
    FUNC2(SYSCON_SYSCLK_CONF_REG, SYSCON_SOC_CLK_SEL, SYSCON_SOC_CLK_SEL_XTL);
    FUNC2(SYSCON_SYSCLK_CONF_REG, SYSCON_PRE_DIV_CNT, 0);
    FUNC4(xtal_freq);
    /* Frequency switch is synchronized to SLOW_CLK cycle. Wait until the switch
     * is complete before disabling the PLL.
     */
    /* register SOC_CLK_SEL is moved to APB domain, so this delay is not neccessary any more */
    //rtc_clk_wait_for_slow_cycle();

    FUNC1(DPORT_CPU_PER_CONF_REG, DPORT_CPUPERIOD_SEL, 0);

    /* BBPLL force power down won't affect force power up setting */
    FUNC3(RTC_CNTL_OPTIONS0_REG,
            RTC_CNTL_BB_I2C_FORCE_PD | RTC_CNTL_BBPLL_FORCE_PD |
            RTC_CNTL_BBPLL_I2C_FORCE_PD);
    s_cur_pll = RTC_PLL_NONE;
    FUNC5(xtal_freq * MHZ);

    /* is APLL under force power down? */
    /* may need equivalent function
    uint32_t apll_fpd = REG_GET_FIELD(RTC_CNTL_ANA_CONF_REG, RTC_CNTL_PLLA_FORCE_PD);

     * if (apll_fpd) {
     *   SET_PERI_REG_MASK(RTC_CNTL_OPTIONS0_REG, RTC_CNTL_BIAS_I2C_FORCE_PD);
     * }
    */

    /* now switch to the desired frequency */
    if (cpu_freq == RTC_CPU_FREQ_XTAL) {
        /* already at XTAL, nothing to do */
    } else if (cpu_freq == RTC_CPU_FREQ_2M) {
        /* set up divider to produce 2MHz from XTAL */
        FUNC2(SYSCON_SYSCLK_CONF_REG, SYSCON_PRE_DIV_CNT, (xtal_freq / 2) - 1);
        FUNC4(2);
        FUNC5(2 * MHZ);
        /* lower the voltage */
        FUNC2(RTC_CNTL_REG, RTC_CNTL_DIG_DBIAS_WAK, DIG_DBIAS_2M);
    } else {
        /* use PLL as clock source */
        FUNC0(RTC_CNTL_OPTIONS0_REG,
                RTC_CNTL_BB_I2C_FORCE_PD |
                RTC_CNTL_BBPLL_FORCE_PD | RTC_CNTL_BBPLL_I2C_FORCE_PD);
        if (cpu_freq > RTC_CPU_FREQ_2M) {
            FUNC6(xtal_freq, RTC_PLL_320M);
            s_cur_pll = RTC_PLL_320M;
        } else {
            FUNC6(xtal_freq, RTC_PLL_480M);
            s_cur_pll = RTC_PLL_480M;
        }

        if ((cpu_freq == RTC_CPU_FREQ_80M) || (cpu_freq == RTC_CPU_320M_80M)) {
            FUNC2(RTC_CNTL_REG, RTC_CNTL_DIG_DBIAS_WAK, DIG_DBIAS_80M_160M);
            FUNC1(DPORT_CPU_PER_CONF_REG, DPORT_CPUPERIOD_SEL, 0);
            FUNC4(80);
        } else if ((cpu_freq == RTC_CPU_FREQ_160M) || (cpu_freq == RTC_CPU_320M_160M)) {
            FUNC2(RTC_CNTL_REG, RTC_CNTL_DIG_DBIAS_WAK, DIG_DBIAS_80M_160M);
            FUNC1(DPORT_CPU_PER_CONF_REG, DPORT_CPUPERIOD_SEL, 1);
            FUNC4(160);
        } else if (cpu_freq == RTC_CPU_FREQ_240M) {
            FUNC2(RTC_CNTL_REG, RTC_CNTL_DIG_DBIAS_WAK, DIG_DBIAS_240M);
            FUNC1(DPORT_CPU_PER_CONF_REG, DPORT_CPUPERIOD_SEL, 2);
            FUNC4(240);
        }
        FUNC2(SYSCON_SYSCLK_CONF_REG, SYSCON_SOC_CLK_SEL, SYSCON_SOC_CLK_SEL_PLL);
        //rtc_clk_wait_for_slow_cycle();
        FUNC5(80 * MHZ);
    }
    s_cur_freq = cpu_freq;
}