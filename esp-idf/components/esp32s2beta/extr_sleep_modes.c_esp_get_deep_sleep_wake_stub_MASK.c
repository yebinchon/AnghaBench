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
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/ * esp_deep_sleep_wake_stub_fn_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  RTC_ENTRY_ADDR_REG ; 
 int /*<<< orphan*/  RTC_MEMORY_CRC_REG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  lock_rtc_memory_crc ; 
 int /*<<< orphan*/  FUNC4 () ; 

esp_deep_sleep_wake_stub_fn_t FUNC5(void)
{
    FUNC2(&lock_rtc_memory_crc);
    uint32_t stored_crc = FUNC0(RTC_MEMORY_CRC_REG);
    FUNC4();
    uint32_t calc_crc = FUNC0(RTC_MEMORY_CRC_REG);
    FUNC1(RTC_MEMORY_CRC_REG, stored_crc);
    FUNC3(&lock_rtc_memory_crc);

    if(stored_crc == calc_crc) {
        return (esp_deep_sleep_wake_stub_fn_t)FUNC0(RTC_ENTRY_ADDR_REG);
    } else {
        return NULL;
    }
}