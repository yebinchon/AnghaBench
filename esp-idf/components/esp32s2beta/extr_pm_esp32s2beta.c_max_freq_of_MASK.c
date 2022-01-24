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
typedef  int /*<<< orphan*/  rtc_cpu_freq_t ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  RTC_CPU_FREQ_XTAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static rtc_cpu_freq_t FUNC4(rtc_cpu_freq_t f1, rtc_cpu_freq_t f2)
{
    int f1_hz = FUNC3(f1);
    int f2_hz = FUNC3(f2);
    int f_max_hz = FUNC0(f1_hz, f2_hz);
    rtc_cpu_freq_t result = RTC_CPU_FREQ_XTAL;
    if (!FUNC2(f_max_hz/1000000, &result)) {
        FUNC1(false && "unsupported frequency");
    }
    return result;
}