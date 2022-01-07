
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int32_t ;
typedef int esp_event_loop_handle_t ;
typedef int esp_event_loop_args_t ;
typedef int esp_event_base_t ;


 int ESP_OK ;
 int TEST_ASSERT_EQUAL (int ,int ) ;
 scalar_t__ TEST_EVENT_BASE1_EV1 ;
 int esp_event_loop_create (int *,int *) ;
 int esp_event_loop_delete (int ) ;
 int test_event_get_default_loop_args () ;

__attribute__((used)) static void test_create_loop_handler(void* handler_args, esp_event_base_t base, int32_t id, void* event_data)
{
    esp_event_loop_args_t loop_args = test_event_get_default_loop_args();

    if (id == TEST_EVENT_BASE1_EV1) {
        TEST_ASSERT_EQUAL(ESP_OK, esp_event_loop_create(&loop_args, (esp_event_loop_handle_t*) handler_args));
    } else {
        TEST_ASSERT_EQUAL(ESP_OK, esp_event_loop_delete(*((esp_event_loop_handle_t*) handler_args)));
    }
}
