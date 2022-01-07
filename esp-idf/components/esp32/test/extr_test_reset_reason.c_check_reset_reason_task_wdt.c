
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CHECK_VALUE ;
 int ESP_RST_TASK_WDT ;
 int TEST_ASSERT_EQUAL (int ,int ) ;
 int TEST_ASSERT_EQUAL_HEX32 (int ,int ) ;
 int esp_reset_reason () ;
 int s_noinit_val ;
 int s_rtc_bss_val ;
 int s_rtc_data_val ;
 int s_rtc_force_fast_val ;
 int s_rtc_force_slow_val ;
 int s_rtc_noinit_val ;
 int s_rtc_rodata_val ;

__attribute__((used)) static void check_reset_reason_task_wdt(void)
{
    TEST_ASSERT_EQUAL(ESP_RST_TASK_WDT, esp_reset_reason());

    TEST_ASSERT_EQUAL_HEX32(CHECK_VALUE, s_noinit_val);
    TEST_ASSERT_EQUAL_HEX32(CHECK_VALUE, s_rtc_noinit_val);
    TEST_ASSERT_EQUAL_HEX32(0, s_rtc_data_val);
    TEST_ASSERT_EQUAL_HEX32(0, s_rtc_bss_val);
    TEST_ASSERT_EQUAL_HEX32(CHECK_VALUE, s_rtc_rodata_val);
    TEST_ASSERT_EQUAL_HEX32(0, s_rtc_force_fast_val);
    TEST_ASSERT_EQUAL_HEX32(0, s_rtc_force_slow_val);
}
