
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ESP_OK ;
 int TEST_ASSERT_EQUAL (int ,int ) ;
 int TEST_ASSERT_TRUE (int) ;
 int TEST_CONFIG_TASKS_TO_SPAWN ;
 int esp_event_loop_create_default () ;

__attribute__((used)) static void test_setup(void)
{
    TEST_ASSERT_TRUE(TEST_CONFIG_TASKS_TO_SPAWN >= 2);
    TEST_ASSERT_EQUAL(ESP_OK, esp_event_loop_create_default());
}
