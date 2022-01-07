
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CHECK_VALUE ;
 int ESP_RST_WDT ;
 int TEST_ASSERT_EQUAL (int ,int ) ;
 int TEST_ASSERT_EQUAL_HEX32 (int ,int ) ;
 int esp_reset_reason () ;
 int s_rtc_noinit_val ;

__attribute__((used)) static void check_reset_reason_any_wdt(void)
{
    TEST_ASSERT_EQUAL(ESP_RST_WDT, esp_reset_reason());
    TEST_ASSERT_EQUAL_HEX32(CHECK_VALUE, s_rtc_noinit_val);
}
