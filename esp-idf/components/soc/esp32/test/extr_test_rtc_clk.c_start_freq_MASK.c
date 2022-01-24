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
typedef  long long uint64_t ;
typedef  int uint32_t ;
typedef  scalar_t__ rtc_slow_freq_t ;

/* Variables and functions */
 int CONFIG_ESP32_RTC_CLK_CAL_CYCLES ; 
 int CONFIG_ESP32_RTC_XTAL_BOOTSTRAP_CYCLES ; 
 int COUNT_TEST ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int configTICK_RATE_HZ ; 
 long long FUNC1 () ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int FUNC9 () ; 

__attribute__((used)) static void FUNC10(rtc_slow_freq_t required_src_freq, uint32_t start_delay_ms)
{
    int i = 0, fail = 0;
    uint32_t start_time;
    uint32_t end_time;
    rtc_slow_freq_t selected_src_freq;
    FUNC8();
#ifdef CONFIG_ESP32_RTC_CLK_SRC_EXT_CRYS
    uint32_t bootstrap_cycles = CONFIG_ESP32_RTC_XTAL_BOOTSTRAP_CYCLES;
    printf("Test is started. Kconfig settings:\n External 32K crystal is selected,\n Oscillation cycles = %d,\n Calibration cycles = %d.\n",
            bootstrap_cycles,
            CONFIG_ESP32_RTC_CLK_CAL_CYCLES);
#else
    uint32_t bootstrap_cycles = 5;
    FUNC4("Test is started. Kconfig settings:\n Internal RC is selected,\n Oscillation cycles = %d,\n Calibration cycles = %d.\n",
            bootstrap_cycles,
            CONFIG_ESP32_RTC_CLK_CAL_CYCLES);
#endif
    if (start_delay_ms == 0 && CONFIG_ESP32_RTC_CLK_CAL_CYCLES < 1500){
        start_delay_ms = 50;
        FUNC4("Recommended increase Number of cycles for RTC_SLOW_CLK calibration to 3000!\n");
    }
    while(i < COUNT_TEST){
        start_time = FUNC9() * (1000 / configTICK_RATE_HZ);
        i++;
        FUNC4("attempt #%d/%d...", i, COUNT_TEST);
        FUNC5(bootstrap_cycles);
        FUNC3(start_delay_ms * 1000);
        FUNC6();
        selected_src_freq = FUNC7();
        end_time = FUNC9() * (1000 / configTICK_RATE_HZ);
        FUNC4(" [time=%d] ", (end_time - start_time) - start_delay_ms);
        if(selected_src_freq != required_src_freq){
            FUNC4("FAIL. Time measurement...");
            fail = 1;
        } else {
            FUNC4("PASS. Time measurement...");
        }
        uint64_t clk_rtc_time;
        uint32_t fail_measure = 0;
        for (int j = 0; j < 3; ++j) {
            clk_rtc_time = FUNC1();
            FUNC3(1000000);
            uint64_t delta = FUNC1() - clk_rtc_time;
            if (delta < 900000LL || delta > 1100000){
                FUNC4("FAIL");
                fail = 1;
                fail_measure = 1;
                break;
            }
        }
        if(fail_measure == 0) {
            FUNC4("PASS");
        }
        FUNC4(" [calibration val = %d] \n", FUNC2());
        FUNC8();
        FUNC3(500000);
    }
    FUNC0(fail == 0, "Test failed");
    FUNC4("Test passed successfully\n");
}