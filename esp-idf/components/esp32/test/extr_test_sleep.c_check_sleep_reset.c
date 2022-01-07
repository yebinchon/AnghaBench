
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ESP_RST_DEEPSLEEP ;
 int TEST_ASSERT_EQUAL (int ,int ) ;
 int esp_reset_reason () ;

__attribute__((used)) static void check_sleep_reset(void)
{
    TEST_ASSERT_EQUAL(ESP_RST_DEEPSLEEP, esp_reset_reason());
}
