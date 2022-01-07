
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int done; int start; TYPE_2__* data; } ;
typedef TYPE_1__ task_arg_t ;
struct TYPE_4__ {int num; int id; int base; int loop; } ;
typedef TYPE_2__ post_event_data_t ;


 int ESP_OK ;
 int TEST_ASSERT_EQUAL (int ,int ) ;
 int esp_event_post_to (int ,int ,int ,int *,int ,int ) ;
 int portMAX_DELAY ;
 int vTaskDelay (int) ;
 int vTaskDelete (int *) ;
 int xSemaphoreGive (int ) ;
 int xSemaphoreTake (int ,int ) ;

__attribute__((used)) static void test_event_post_task(void* args)
{
    task_arg_t* arg = (task_arg_t*) args;
    post_event_data_t* data = arg->data;

    xSemaphoreTake(arg->start, portMAX_DELAY);

    for (int i = 0; i < data->num; i++) {
        TEST_ASSERT_EQUAL(ESP_OK, esp_event_post_to(data->loop, data->base, data->id, ((void*)0), 0, portMAX_DELAY));
        vTaskDelay(1);
    }

    xSemaphoreGive(arg->done);

    vTaskDelete(((void*)0));
}
