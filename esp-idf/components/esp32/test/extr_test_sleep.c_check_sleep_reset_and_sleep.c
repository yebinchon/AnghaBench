
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ESP_RST_DEEPSLEEP ;
 int TEST_ASSERT_EQUAL (int ,int ) ;
 int esp_deep_sleep_start () ;
 int esp_reset_reason () ;
 int esp_sleep_enable_timer_wakeup (int) ;

__attribute__((used)) static void check_sleep_reset_and_sleep(void)
{
    TEST_ASSERT_EQUAL(ESP_RST_DEEPSLEEP, esp_reset_reason());
    esp_sleep_enable_timer_wakeup(100000);
    esp_deep_sleep_start();
}
