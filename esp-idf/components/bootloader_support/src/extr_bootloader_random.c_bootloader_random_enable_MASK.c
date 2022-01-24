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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DPORT_I2S0_CLK_EN ; 
 int /*<<< orphan*/  DPORT_PERIP_CLK_EN_REG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DPORT_WIFI_CLK_EN_REG ; 
 int /*<<< orphan*/  DPORT_WIFI_CLK_RNG_EN ; 
 int /*<<< orphan*/  I2S_CAMERA_EN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  I2S_DATA_ENABLE ; 
 int /*<<< orphan*/  I2S_DATA_ENABLE_TEST_EN ; 
 int /*<<< orphan*/  I2S_LCD_EN ; 
 int /*<<< orphan*/  I2S_RX_BCK_DIV_NUM ; 
 int /*<<< orphan*/  I2S_RX_BCK_DIV_NUM_S ; 
 int /*<<< orphan*/  I2S_RX_START ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PERIPH_I2S0_MODULE ; 
 int /*<<< orphan*/  PERIPH_RNG_MODULE ; 
 int /*<<< orphan*/  RTC_CNTL_DTEST_RTC ; 
 int /*<<< orphan*/  RTC_CNTL_DTEST_RTC_S ; 
 int /*<<< orphan*/  RTC_CNTL_ENT_RTC ; 
 int /*<<< orphan*/  RTC_CNTL_TEST_MUX_REG ; 
 int /*<<< orphan*/  RTC_CNTL_ULP_CP_CTRL_REG ; 
 int /*<<< orphan*/  RTC_CNTL_ULP_CP_FORCE_START_TOP ; 
 int /*<<< orphan*/  RTC_CNTL_ULP_CP_START_TOP ; 
 int /*<<< orphan*/  SENS_FORCE_XPD_SAR ; 
 int /*<<< orphan*/  SENS_FORCE_XPD_SAR_S ; 
 int /*<<< orphan*/  SENS_SAR1_DIG_FORCE ; 
 int /*<<< orphan*/  SENS_SAR2_DIG_FORCE ; 
 int /*<<< orphan*/  SENS_SAR2_EN_TEST ; 
 int /*<<< orphan*/  SENS_SAR_MEAS1_MUX_REG ; 
 int /*<<< orphan*/  SENS_SAR_MEAS2_CTRL1_REG ; 
 int /*<<< orphan*/  SENS_SAR_MEAS_WAIT2_REG ; 
 int /*<<< orphan*/  SENS_SAR_POWER_XPD_SAR_REG ; 
 int /*<<< orphan*/  SENS_SAR_READ_CTRL2_REG ; 
 int /*<<< orphan*/  SENS_SAR_READ_CTRL_REG ; 
 int /*<<< orphan*/  SENS_SAR_START_FORCE_REG ; 
 int /*<<< orphan*/  SENS_ULP_CP_FORCE_START_TOP ; 
 int /*<<< orphan*/  SENS_ULP_CP_START_TOP ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SYSCON_SARADC_CTRL_REG ; 
 int /*<<< orphan*/  SYSCON_SARADC_DATA_SAR_SEL ; 
 int /*<<< orphan*/  SYSCON_SARADC_DATA_TO_I2S ; 
 int /*<<< orphan*/  SYSCON_SARADC_FSM_REG ; 
 int /*<<< orphan*/  SYSCON_SARADC_RSTB_WAIT ; 
 int /*<<< orphan*/  SYSCON_SARADC_RSTB_WAIT_S ; 
 int /*<<< orphan*/  SYSCON_SARADC_SAR2_MUX ; 
 int /*<<< orphan*/  SYSCON_SARADC_SAR2_PATT_TAB1_REG ; 
 int /*<<< orphan*/  SYSCON_SARADC_SAR2_PATT_TAB2_REG ; 
 int /*<<< orphan*/  SYSCON_SARADC_SAR2_PATT_TAB3_REG ; 
 int /*<<< orphan*/  SYSCON_SARADC_SAR2_PATT_TAB4_REG ; 
 int /*<<< orphan*/  SYSCON_SARADC_SAR_CLK_DIV ; 
 int /*<<< orphan*/  SYSCON_SARADC_SAR_CLK_DIV_S ; 
 int /*<<< orphan*/  SYSCON_SARADC_SAR_SEL ; 
 int /*<<< orphan*/  SYSCON_SARADC_START_WAIT ; 
 int /*<<< orphan*/  SYSCON_SARADC_START_WAIT_S ; 
 int /*<<< orphan*/  SYSCON_SARADC_WORK_MODE ; 
 int /*<<< orphan*/  SYSCON_SARADC_WORK_MODE_S ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

void FUNC9(void)
{
    /* Ensure the hardware RNG is enabled following a soft reset.  This should always be the case already (this clock is
       never disabled while the CPU is running), this is a "belts and braces" type check.
     */
#ifdef BOOTLOADER_BUILD
    DPORT_SET_PERI_REG_MASK(DPORT_WIFI_CLK_EN_REG, DPORT_WIFI_CLK_RNG_EN);
#else
    FUNC8(PERIPH_RNG_MODULE);
#endif // BOOTLOADER_BUILD

    /* Enable SAR ADC in test mode to feed ADC readings of the 1.1V
       reference via I2S into the RNG entropy input.

       Note: I2S requires the PLL to be running, so the call to rtc_set_cpu_freq(CPU_80M)
       in early bootloader startup must have been made.
    */
    FUNC5(RTC_CNTL_TEST_MUX_REG, RTC_CNTL_DTEST_RTC, 2, RTC_CNTL_DTEST_RTC_S);
    FUNC6(RTC_CNTL_TEST_MUX_REG, RTC_CNTL_ENT_RTC);
#if CONFIG_IDF_TARGET_ESP32
    SET_PERI_REG_MASK(SENS_SAR_START_FORCE_REG, SENS_SAR2_EN_TEST);

#ifdef BOOTLOADER_BUILD
    DPORT_SET_PERI_REG_MASK(DPORT_PERIP_CLK_EN_REG, DPORT_I2S0_CLK_EN);
#else
    periph_module_enable(PERIPH_I2S0_MODULE);
#endif // BOOTLOADER_BUILD
    CLEAR_PERI_REG_MASK(SENS_SAR_START_FORCE_REG, SENS_ULP_CP_FORCE_START_TOP);
    CLEAR_PERI_REG_MASK(SENS_SAR_START_FORCE_REG, SENS_ULP_CP_START_TOP);
#elif CONFIG_IDF_TARGET_ESP32S2BETA
    SET_PERI_REG_MASK(SENS_SAR_MEAS2_CTRL1_REG, SENS_SAR2_EN_TEST);
    DPORT_SET_PERI_REG_MASK(DPORT_PERIP_CLK_EN_REG, DPORT_I2S0_CLK_EN);
    CLEAR_PERI_REG_MASK(RTC_CNTL_ULP_CP_CTRL_REG, RTC_CNTL_ULP_CP_FORCE_START_TOP);
    CLEAR_PERI_REG_MASK(RTC_CNTL_ULP_CP_CTRL_REG, RTC_CNTL_ULP_CP_START_TOP);
#endif

    // Test pattern configuration byte 0xAD:
    //--[7:4] channel_sel: 10-->en_test
    //--[3:2] bit_width  : 3-->12bit
    //--[1:0] atten      : 1-->3dB attenuation
    FUNC7(SYSCON_SARADC_SAR2_PATT_TAB1_REG, 0xADADADAD);
    FUNC7(SYSCON_SARADC_SAR2_PATT_TAB2_REG, 0xADADADAD);
    FUNC7(SYSCON_SARADC_SAR2_PATT_TAB3_REG, 0xADADADAD);
    FUNC7(SYSCON_SARADC_SAR2_PATT_TAB4_REG, 0xADADADAD);
#if CONFIG_IDF_TARGET_ESP32
    SET_PERI_REG_BITS(SENS_SAR_MEAS_WAIT2_REG, SENS_FORCE_XPD_SAR, 3, SENS_FORCE_XPD_SAR_S);
    SET_PERI_REG_MASK(SENS_SAR_READ_CTRL_REG, SENS_SAR1_DIG_FORCE);
    SET_PERI_REG_MASK(SENS_SAR_READ_CTRL2_REG, SENS_SAR2_DIG_FORCE);
#elif CONFIG_IDF_TARGET_ESP32S2BETA
    SET_PERI_REG_BITS(SENS_SAR_POWER_XPD_SAR_REG, SENS_FORCE_XPD_SAR, 3, SENS_FORCE_XPD_SAR_S);
    SET_PERI_REG_MASK(SENS_SAR_MEAS1_MUX_REG, SENS_SAR1_DIG_FORCE);
#endif

#if CONFIG_IDF_TARGET_ESP32
    SET_PERI_REG_MASK(SYSCON_SARADC_CTRL_REG, SYSCON_SARADC_SAR2_MUX);
#endif
    FUNC5(SYSCON_SARADC_CTRL_REG, SYSCON_SARADC_SAR_CLK_DIV, 4, SYSCON_SARADC_SAR_CLK_DIV_S);

    FUNC5(SYSCON_SARADC_FSM_REG, SYSCON_SARADC_RSTB_WAIT, 8, SYSCON_SARADC_RSTB_WAIT_S); /* was 1 */
#if CONFIG_IDF_TARGET_ESP32
    SET_PERI_REG_BITS(SYSCON_SARADC_FSM_REG, SYSCON_SARADC_START_WAIT, 10, SYSCON_SARADC_START_WAIT_S);
#endif
    FUNC5(SYSCON_SARADC_CTRL_REG, SYSCON_SARADC_WORK_MODE, 0, SYSCON_SARADC_WORK_MODE_S);
    FUNC6(SYSCON_SARADC_CTRL_REG, SYSCON_SARADC_SAR_SEL);
    FUNC0(SYSCON_SARADC_CTRL_REG, SYSCON_SARADC_DATA_SAR_SEL);

    FUNC5(FUNC4(0), I2S_RX_BCK_DIV_NUM, 20, I2S_RX_BCK_DIV_NUM_S);

    FUNC6(SYSCON_SARADC_CTRL_REG, SYSCON_SARADC_DATA_TO_I2S);

    FUNC0(FUNC2(0), I2S_CAMERA_EN);
    FUNC6(FUNC2(0), I2S_LCD_EN);
    FUNC6(FUNC2(0), I2S_DATA_ENABLE);
    FUNC6(FUNC2(0), I2S_DATA_ENABLE_TEST_EN);
    FUNC6(FUNC3(0), I2S_RX_START);
}