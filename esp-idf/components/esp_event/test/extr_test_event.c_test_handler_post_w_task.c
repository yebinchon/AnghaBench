
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ mutex; scalar_t__ data; } ;
typedef TYPE_1__ simple_arg_t ;
typedef scalar_t__ int32_t ;
typedef int esp_event_loop_handle_t ;
typedef scalar_t__ esp_event_base_t ;
typedef int SemaphoreHandle_t ;


 int ESP_ERR_TIMEOUT ;
 int ESP_OK ;
 int TEST_ASSERT_EQUAL (int ,int ) ;
 scalar_t__ TEST_EVENT_BASE1_EV1 ;
 int TEST_EVENT_BASE1_EV2 ;
 int esp_event_post_to (int ,scalar_t__,int ,int *,int ,int ) ;
 int portMAX_DELAY ;
 scalar_t__ s_test_base1 ;
 int xSemaphoreGive (int ) ;
 int xSemaphoreTake (int ,int ) ;

__attribute__((used)) static void test_handler_post_w_task(void* event_handler_arg, esp_event_base_t event_base, int32_t event_id, void* event_data)
{
    simple_arg_t* arg = (simple_arg_t*) event_handler_arg;

    esp_event_loop_handle_t* loop = (esp_event_loop_handle_t*) event_data;
    int* count = (int*) arg->data;

    (*count)++;

    if (*count <= 2) {
        if (event_base == s_test_base1 && event_id == TEST_EVENT_BASE1_EV1) {
            TEST_ASSERT_EQUAL(ESP_OK, esp_event_post_to(*loop, s_test_base1, TEST_EVENT_BASE1_EV2, ((void*)0), 0, portMAX_DELAY));
        } else{
            xSemaphoreGive((SemaphoreHandle_t) arg->mutex);
        }
    } else {


        if (event_base == s_test_base1 && event_id == TEST_EVENT_BASE1_EV1) {
            xSemaphoreTake((SemaphoreHandle_t) arg->mutex, portMAX_DELAY);
            TEST_ASSERT_EQUAL(ESP_ERR_TIMEOUT, esp_event_post_to(*loop, s_test_base1, TEST_EVENT_BASE1_EV2, ((void*)0), 0, portMAX_DELAY));
        }
    }
}
