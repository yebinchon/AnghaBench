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
struct TYPE_5__ {int freq_mhz; } ;
typedef  TYPE_1__ rtc_cpu_freq_config_t ;

/* Variables and functions */
 int CONFIG_ESP_CONSOLE_UART_BAUDRATE ; 
 int CONFIG_ESP_CONSOLE_UART_NUM ; 
 int XT_TICK_PER_SEC ; 
 int _xt_tick_divisor ; 
 int /*<<< orphan*/  accessAPB ; 
 int /*<<< orphan*/  accessDPORT ; 
 int apb_test_result ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int dport_test_result ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int const,int) ; 
 int /*<<< orphan*/  FUNC8 (int const) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

void FUNC10(int cpu_freq_mhz)
{
    const int uart_num = CONFIG_ESP_CONSOLE_UART_NUM;
    const int uart_baud = CONFIG_ESP_CONSOLE_UART_BAUDRATE;
    dport_test_result = false;
    apb_test_result = false;
    rtc_cpu_freq_config_t old_config;
    FUNC3(&old_config);

    FUNC1("CPU_FREQ = %d MHz\n", old_config.freq_mhz);

    if (cpu_freq_mhz != old_config.freq_mhz) {
        rtc_cpu_freq_config_t new_config;
        bool res = FUNC4(cpu_freq_mhz, &new_config);
        FUNC0(res && "invalid frequency value");

        FUNC8(uart_num);
        FUNC5(&new_config);
        FUNC7(uart_num, (FUNC2() << 4) / uart_baud);
        /* adjust RTOS ticks */
        _xt_tick_divisor = cpu_freq_mhz * 1000000 / XT_TICK_PER_SEC;
        FUNC9(2);

        FUNC1("CPU_FREQ switched to %d MHz\n", cpu_freq_mhz);
    }
    FUNC6("accessDPORT", accessDPORT, "accessAPB", accessAPB, 10000);

    // return old freq.
    FUNC8(uart_num);
    FUNC5(&old_config);
    FUNC7(uart_num, (FUNC2() << 4) / uart_baud);
    _xt_tick_divisor = old_config.freq_mhz * 1000000 / XT_TICK_PER_SEC;
}