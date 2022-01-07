
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int done; int start; scalar_t__ data; } ;
typedef TYPE_1__ task_arg_t ;
struct TYPE_4__ {int num; int * handles; int id; int base; int loop; scalar_t__ is_registration; } ;
typedef TYPE_2__ handler_registration_data_t ;


 int ESP_OK ;
 int TEST_ASSERT_EQUAL (int ,int ) ;
 int esp_event_handler_register_with (int ,int ,int ,int ,int *) ;
 int esp_event_handler_unregister_with (int ,int ,int ,int ) ;
 int portMAX_DELAY ;
 int vTaskDelay (int) ;
 int vTaskDelete (int *) ;
 int xSemaphoreGive (int ) ;
 int xSemaphoreTake (int ,int ) ;

__attribute__((used)) static void test_event_simple_handler_registration_task(void* args)
{
    task_arg_t* arg = (task_arg_t*) args;
    handler_registration_data_t* data = (handler_registration_data_t*) arg->data;

    xSemaphoreTake(arg->start, portMAX_DELAY);

    for(int i = 0; i < data->num; i++) {
        if (data->is_registration) {
            TEST_ASSERT_EQUAL(ESP_OK, esp_event_handler_register_with(data->loop, data->base, data->id, data->handles[i], ((void*)0)));
        } else {
            TEST_ASSERT_EQUAL(ESP_OK, esp_event_handler_unregister_with(data->loop, data->base, data->id, data->handles[i]));
        }
        vTaskDelay(1);
    }

    xSemaphoreGive(arg->done);

    vTaskDelete(((void*)0));
}
