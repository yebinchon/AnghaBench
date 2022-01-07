
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_event_loop_handle_t ;


 int ESP_OK ;
 int TEST_ASSERT_EQUAL (int ,int ) ;
 int esp_event_loop_run (int ,int ) ;
 int portMAX_DELAY ;

__attribute__((used)) static void test_post_from_handler_loop_task(void* args)
{
    esp_event_loop_handle_t event_loop = (esp_event_loop_handle_t) args;

    while(1) {
        TEST_ASSERT_EQUAL(ESP_OK, esp_event_loop_run(event_loop, portMAX_DELAY));
    }
}
