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
 int /*<<< orphan*/  CHECK_VALUE ; 
 int /*<<< orphan*/  ESP_RST_PANIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  s_noinit_val ; 
 int /*<<< orphan*/  s_rtc_bss_val ; 
 int /*<<< orphan*/  s_rtc_data_val ; 
 int /*<<< orphan*/  s_rtc_force_fast_val ; 
 int /*<<< orphan*/  s_rtc_force_slow_val ; 
 int /*<<< orphan*/  s_rtc_noinit_val ; 
 int /*<<< orphan*/  s_rtc_rodata_val ; 

__attribute__((used)) static void FUNC3(void)
{
    FUNC0(ESP_RST_PANIC, FUNC2());

    FUNC1(CHECK_VALUE, s_noinit_val);
    FUNC1(CHECK_VALUE, s_rtc_noinit_val);
    FUNC1(0, s_rtc_data_val);
    FUNC1(0, s_rtc_bss_val);
    FUNC1(CHECK_VALUE, s_rtc_rodata_val);
    FUNC1(0, s_rtc_force_fast_val);
    FUNC1(0, s_rtc_force_slow_val);
}