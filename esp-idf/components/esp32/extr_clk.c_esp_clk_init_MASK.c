#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int const uint64_t ;
typedef  int uint32_t ;
typedef  scalar_t__ rtc_xtal_freq_t ;
struct TYPE_5__ {int freq_mhz; } ;
typedef  TYPE_1__ rtc_cpu_freq_config_t ;
typedef  int /*<<< orphan*/  rtc_config_t ;

/* Variables and functions */
 int CONFIG_BOOTLOADER_WDT_TIME_MS ; 
 int CONFIG_ESP32_DEFAULT_CPU_FREQ_MHZ ; 
 int /*<<< orphan*/  CONFIG_ESP_CONSOLE_UART_NUM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  RTC_FAST_FREQ_8M ; 
 int /*<<< orphan*/  RTC_SLOW_FREQ_RTC ; 
 int /*<<< orphan*/  RTC_WDT_STAGE0 ; 
 scalar_t__ RTC_XTAL_FREQ_AUTO ; 
 int /*<<< orphan*/  SLOW_CLK_32K_EXT_OSC ; 
 int /*<<< orphan*/  SLOW_CLK_32K_XTAL ; 
 int /*<<< orphan*/  SLOW_CLK_8MD256 ; 
 int /*<<< orphan*/  TAG ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int const) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int FUNC7 (int const,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 

void FUNC18(void)
{
    rtc_config_t cfg = FUNC1();
    FUNC11(cfg);

#if (CONFIG_ESP32_COMPATIBLE_PRE_V2_1_BOOTLOADERS || CONFIG_ESP32_APP_INIT_CLK)
    /* Check the bootloader set the XTAL frequency.

       Bootloaders pre-v2.1 don't do this.
    */
    rtc_xtal_freq_t xtal_freq = rtc_clk_xtal_freq_get();
    if (xtal_freq == RTC_XTAL_FREQ_AUTO) {
        ESP_EARLY_LOGW(TAG, "RTC domain not initialised by bootloader");
        bootloader_clock_configure();
    }
#else
    /* If this assertion fails, either upgrade the bootloader or enable CONFIG_ESP32_COMPATIBLE_PRE_V2_1_BOOTLOADERS */
    FUNC4(FUNC10() != RTC_XTAL_FREQ_AUTO);
#endif

    FUNC9(RTC_FAST_FREQ_8M);

#ifdef CONFIG_BOOTLOADER_WDT_ENABLE
    // WDT uses a SLOW_CLK clock source. After a function select_rtc_slow_clk a frequency of this source can changed.
    // If the frequency changes from 150kHz to 32kHz, then the timeout set for the WDT will increase 4.6 times.
    // Therefore, for the time of frequency change, set a new lower timeout value (1.6 sec).
    // This prevents excessive delay before resetting in case the supply voltage is drawdown.
    // (If frequency is changed from 150kHz to 32kHz then WDT timeout will increased to 1.6sec * 150/32 = 7.5 sec).
    rtc_wdt_protect_off();
    rtc_wdt_feed();
    rtc_wdt_set_time(RTC_WDT_STAGE0, 1600);
    rtc_wdt_protect_on();
#endif

#if defined(CONFIG_ESP32_RTC_CLK_SRC_EXT_CRYS)
    select_rtc_slow_clk(SLOW_CLK_32K_XTAL);
#elif defined(CONFIG_ESP32_RTC_CLK_SRC_EXT_OSC)
    select_rtc_slow_clk(SLOW_CLK_32K_EXT_OSC);
#elif defined(CONFIG_ESP32_RTC_CLK_SRC_INT_8MD256)
    select_rtc_slow_clk(SLOW_CLK_8MD256);
#else
    FUNC16(RTC_SLOW_FREQ_RTC);
#endif

#ifdef CONFIG_BOOTLOADER_WDT_ENABLE
    // After changing a frequency WDT timeout needs to be set for new frequency.
    rtc_wdt_protect_off();
    rtc_wdt_feed();
    rtc_wdt_set_time(RTC_WDT_STAGE0, CONFIG_BOOTLOADER_WDT_TIME_MS);
    rtc_wdt_protect_on();
#endif

    rtc_cpu_freq_config_t old_config, new_config;
    FUNC6(&old_config);
    const uint32_t old_freq_mhz = old_config.freq_mhz;
    const uint32_t new_freq_mhz = CONFIG_ESP32_DEFAULT_CPU_FREQ_MHZ;

    bool res = FUNC7(new_freq_mhz, &new_config);
    FUNC4(res);

    // Wait for UART TX to finish, otherwise some UART output will be lost
    // when switching APB frequency
    FUNC17(CONFIG_ESP_CONSOLE_UART_NUM);

    FUNC8(&new_config);

    // Re calculate the ccount to make time calculation correct.
    FUNC3( (uint64_t)FUNC2() * new_freq_mhz / old_freq_mhz );
}