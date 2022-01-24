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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  scalar_t__ esp_deep_sleep_wake_stub_fn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RTC_ENTRY_ADDR_REG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  lock_rtc_memory_crc ; 
 int /*<<< orphan*/  FUNC3 () ; 

void FUNC4(esp_deep_sleep_wake_stub_fn_t new_stub)
{
    FUNC1(&lock_rtc_memory_crc);
    FUNC0(RTC_ENTRY_ADDR_REG, (uint32_t)new_stub);
    FUNC3();
    FUNC2(&lock_rtc_memory_crc);
}