
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mutex; scalar_t__ data; } ;
typedef TYPE_1__ simple_arg_t ;
typedef int int32_t ;
typedef int esp_event_base_t ;


 int portMAX_DELAY ;
 int xSemaphoreGive (int ) ;
 int xSemaphoreTake (int ,int ) ;

__attribute__((used)) static void test_event_simple_handler(void* event_handler_arg, esp_event_base_t event_base, int32_t event_id, void* event_data)
{
    if (!event_handler_arg) {
        return;
    }
    simple_arg_t* arg = (simple_arg_t*) event_handler_arg;
    xSemaphoreTake(arg->mutex, portMAX_DELAY);

    int* count = (int*) arg->data;

    if (event_data == ((void*)0)) {
        (*count)++;
    } else {
        (*count) += *((int*) event_data);
    }

    xSemaphoreGive(arg->mutex);
}
